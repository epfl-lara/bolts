; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39298 () Bool)

(assert start!39298)

(declare-fun b_free!9557 () Bool)

(declare-fun b_next!9557 () Bool)

(assert (=> start!39298 (= b_free!9557 (not b_next!9557))))

(declare-fun tp!34199 () Bool)

(declare-fun b_and!17007 () Bool)

(assert (=> start!39298 (= tp!34199 b_and!17007)))

(declare-fun b!415524 () Bool)

(declare-fun e!248165 () Bool)

(declare-fun e!248170 () Bool)

(assert (=> b!415524 (= e!248165 (not e!248170))))

(declare-fun res!241844 () Bool)

(assert (=> b!415524 (=> res!241844 e!248170)))

(declare-datatypes ((array!25255 0))(
  ( (array!25256 (arr!12074 (Array (_ BitVec 32) (_ BitVec 64))) (size!12426 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25255)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415524 (= res!241844 (validKeyInArray!0 (select (arr!12074 _keys!709) from!863)))))

(declare-fun e!248169 () Bool)

(assert (=> b!415524 e!248169))

(declare-fun c!54974 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415524 (= c!54974 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15383 0))(
  ( (V!15384 (val!5399 Int)) )
))
(declare-fun minValue!515 () V!15383)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12243 0))(
  ( (Unit!12244) )
))
(declare-fun lt!190290 () Unit!12243)

(declare-datatypes ((ValueCell!5011 0))(
  ( (ValueCellFull!5011 (v!7642 V!15383)) (EmptyCell!5011) )
))
(declare-datatypes ((array!25257 0))(
  ( (array!25258 (arr!12075 (Array (_ BitVec 32) ValueCell!5011)) (size!12427 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25257)

(declare-fun zeroValue!515 () V!15383)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15383)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!384 (array!25255 array!25257 (_ BitVec 32) (_ BitVec 32) V!15383 V!15383 (_ BitVec 32) (_ BitVec 64) V!15383 (_ BitVec 32) Int) Unit!12243)

(assert (=> b!415524 (= lt!190290 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!384 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415525 () Bool)

(declare-fun res!241845 () Bool)

(declare-fun e!248162 () Bool)

(assert (=> b!415525 (=> (not res!241845) (not e!248162))))

(declare-datatypes ((List!7015 0))(
  ( (Nil!7012) (Cons!7011 (h!7867 (_ BitVec 64)) (t!12245 List!7015)) )
))
(declare-fun arrayNoDuplicates!0 (array!25255 (_ BitVec 32) List!7015) Bool)

(assert (=> b!415525 (= res!241845 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7012))))

(declare-fun b!415526 () Bool)

(declare-fun res!241839 () Bool)

(declare-fun e!248168 () Bool)

(assert (=> b!415526 (=> (not res!241839) (not e!248168))))

(assert (=> b!415526 (= res!241839 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17685 () Bool)

(declare-fun mapRes!17685 () Bool)

(declare-fun tp!34200 () Bool)

(declare-fun e!248166 () Bool)

(assert (=> mapNonEmpty!17685 (= mapRes!17685 (and tp!34200 e!248166))))

(declare-fun mapKey!17685 () (_ BitVec 32))

(declare-fun mapRest!17685 () (Array (_ BitVec 32) ValueCell!5011))

(declare-fun mapValue!17685 () ValueCell!5011)

(assert (=> mapNonEmpty!17685 (= (arr!12075 _values!549) (store mapRest!17685 mapKey!17685 mapValue!17685))))

(declare-fun b!415527 () Bool)

(declare-fun res!241847 () Bool)

(assert (=> b!415527 (=> (not res!241847) (not e!248162))))

(assert (=> b!415527 (= res!241847 (and (= (size!12427 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12426 _keys!709) (size!12427 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415528 () Bool)

(assert (=> b!415528 (= e!248170 true)))

(declare-fun lt!190289 () array!25255)

(declare-datatypes ((tuple2!6960 0))(
  ( (tuple2!6961 (_1!3490 (_ BitVec 64)) (_2!3490 V!15383)) )
))
(declare-datatypes ((List!7016 0))(
  ( (Nil!7013) (Cons!7012 (h!7868 tuple2!6960) (t!12246 List!7016)) )
))
(declare-datatypes ((ListLongMap!5887 0))(
  ( (ListLongMap!5888 (toList!2959 List!7016)) )
))
(declare-fun lt!190287 () ListLongMap!5887)

(declare-fun lt!190288 () array!25257)

(declare-fun +!1172 (ListLongMap!5887 tuple2!6960) ListLongMap!5887)

(declare-fun getCurrentListMapNoExtraKeys!1163 (array!25255 array!25257 (_ BitVec 32) (_ BitVec 32) V!15383 V!15383 (_ BitVec 32) Int) ListLongMap!5887)

(declare-fun get!5965 (ValueCell!5011 V!15383) V!15383)

(declare-fun dynLambda!660 (Int (_ BitVec 64)) V!15383)

(assert (=> b!415528 (= lt!190287 (+!1172 (getCurrentListMapNoExtraKeys!1163 lt!190289 lt!190288 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6961 (select (arr!12074 lt!190289) from!863) (get!5965 (select (arr!12075 lt!190288) from!863) (dynLambda!660 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!415529 () Bool)

(declare-fun e!248164 () Bool)

(declare-fun e!248167 () Bool)

(assert (=> b!415529 (= e!248164 (and e!248167 mapRes!17685))))

(declare-fun condMapEmpty!17685 () Bool)

(declare-fun mapDefault!17685 () ValueCell!5011)

