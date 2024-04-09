; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39282 () Bool)

(assert start!39282)

(declare-fun b_free!9541 () Bool)

(declare-fun b_next!9541 () Bool)

(assert (=> start!39282 (= b_free!9541 (not b_next!9541))))

(declare-fun tp!34151 () Bool)

(declare-fun b_and!16975 () Bool)

(assert (=> start!39282 (= tp!34151 b_and!16975)))

(declare-fun b!415052 () Bool)

(declare-fun e!247952 () Bool)

(declare-fun e!247947 () Bool)

(assert (=> b!415052 (= e!247952 e!247947)))

(declare-fun res!241499 () Bool)

(assert (=> b!415052 (=> (not res!241499) (not e!247947))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415052 (= res!241499 (= from!863 i!563))))

(declare-datatypes ((V!15363 0))(
  ( (V!15364 (val!5391 Int)) )
))
(declare-fun minValue!515 () V!15363)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15363)

(declare-datatypes ((ValueCell!5003 0))(
  ( (ValueCellFull!5003 (v!7634 V!15363)) (EmptyCell!5003) )
))
(declare-datatypes ((array!25223 0))(
  ( (array!25224 (arr!12058 (Array (_ BitVec 32) ValueCell!5003)) (size!12410 (_ BitVec 32))) )
))
(declare-fun lt!190166 () array!25223)

(declare-datatypes ((array!25225 0))(
  ( (array!25226 (arr!12059 (Array (_ BitVec 32) (_ BitVec 64))) (size!12411 (_ BitVec 32))) )
))
(declare-fun lt!190168 () array!25225)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6944 0))(
  ( (tuple2!6945 (_1!3482 (_ BitVec 64)) (_2!3482 V!15363)) )
))
(declare-datatypes ((List!7001 0))(
  ( (Nil!6998) (Cons!6997 (h!7853 tuple2!6944) (t!12215 List!7001)) )
))
(declare-datatypes ((ListLongMap!5871 0))(
  ( (ListLongMap!5872 (toList!2951 List!7001)) )
))
(declare-fun lt!190169 () ListLongMap!5871)

(declare-fun getCurrentListMapNoExtraKeys!1156 (array!25225 array!25223 (_ BitVec 32) (_ BitVec 32) V!15363 V!15363 (_ BitVec 32) Int) ListLongMap!5871)

(assert (=> b!415052 (= lt!190169 (getCurrentListMapNoExtraKeys!1156 lt!190168 lt!190166 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25223)

(declare-fun v!412 () V!15363)

(assert (=> b!415052 (= lt!190166 (array!25224 (store (arr!12058 _values!549) i!563 (ValueCellFull!5003 v!412)) (size!12410 _values!549)))))

(declare-fun lt!190170 () ListLongMap!5871)

(declare-fun _keys!709 () array!25225)

(assert (=> b!415052 (= lt!190170 (getCurrentListMapNoExtraKeys!1156 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415053 () Bool)

(declare-fun e!247948 () Bool)

(assert (=> b!415053 (= e!247948 e!247952)))

(declare-fun res!241507 () Bool)

(assert (=> b!415053 (=> (not res!241507) (not e!247952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25225 (_ BitVec 32)) Bool)

(assert (=> b!415053 (= res!241507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190168 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!415053 (= lt!190168 (array!25226 (store (arr!12059 _keys!709) i!563 k!794) (size!12411 _keys!709)))))

(declare-fun bm!28795 () Bool)

(declare-fun call!28798 () ListLongMap!5871)

(declare-fun c!54950 () Bool)

(assert (=> bm!28795 (= call!28798 (getCurrentListMapNoExtraKeys!1156 (ite c!54950 lt!190168 _keys!709) (ite c!54950 lt!190166 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28796 () Bool)

(declare-fun call!28799 () ListLongMap!5871)

(assert (=> bm!28796 (= call!28799 (getCurrentListMapNoExtraKeys!1156 (ite c!54950 _keys!709 lt!190168) (ite c!54950 _values!549 lt!190166) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415054 () Bool)

(declare-fun e!247946 () Bool)

(assert (=> b!415054 (= e!247946 (= call!28799 call!28798))))

(declare-fun mapNonEmpty!17661 () Bool)

(declare-fun mapRes!17661 () Bool)

(declare-fun tp!34152 () Bool)

(declare-fun e!247953 () Bool)

(assert (=> mapNonEmpty!17661 (= mapRes!17661 (and tp!34152 e!247953))))

(declare-fun mapValue!17661 () ValueCell!5003)

(declare-fun mapRest!17661 () (Array (_ BitVec 32) ValueCell!5003))

(declare-fun mapKey!17661 () (_ BitVec 32))

(assert (=> mapNonEmpty!17661 (= (arr!12058 _values!549) (store mapRest!17661 mapKey!17661 mapValue!17661))))

(declare-fun b!415055 () Bool)

(declare-fun res!241503 () Bool)

(assert (=> b!415055 (=> (not res!241503) (not e!247948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415055 (= res!241503 (validMask!0 mask!1025))))

(declare-fun res!241501 () Bool)

(assert (=> start!39282 (=> (not res!241501) (not e!247948))))

(assert (=> start!39282 (= res!241501 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12411 _keys!709))))))

(assert (=> start!39282 e!247948))

(declare-fun tp_is_empty!10693 () Bool)

(assert (=> start!39282 tp_is_empty!10693))

(assert (=> start!39282 tp!34151))

(assert (=> start!39282 true))

(declare-fun e!247950 () Bool)

(declare-fun array_inv!8794 (array!25223) Bool)

(assert (=> start!39282 (and (array_inv!8794 _values!549) e!247950)))

(declare-fun array_inv!8795 (array!25225) Bool)

(assert (=> start!39282 (array_inv!8795 _keys!709)))

(declare-fun b!415056 () Bool)

(assert (=> b!415056 (= e!247953 tp_is_empty!10693)))

(declare-fun b!415057 () Bool)

(declare-fun res!241510 () Bool)

(assert (=> b!415057 (=> (not res!241510) (not e!247952))))

(assert (=> b!415057 (= res!241510 (bvsle from!863 i!563))))

(declare-fun b!415058 () Bool)

(declare-fun res!241505 () Bool)

(assert (=> b!415058 (=> (not res!241505) (not e!247948))))

(declare-datatypes ((List!7002 0))(
  ( (Nil!6999) (Cons!6998 (h!7854 (_ BitVec 64)) (t!12216 List!7002)) )
))
(declare-fun arrayNoDuplicates!0 (array!25225 (_ BitVec 32) List!7002) Bool)

(assert (=> b!415058 (= res!241505 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6999))))

(declare-fun b!415059 () Bool)

(declare-fun e!247951 () Bool)

(assert (=> b!415059 (= e!247951 tp_is_empty!10693)))

(declare-fun b!415060 () Bool)

(assert (=> b!415060 (= e!247950 (and e!247951 mapRes!17661))))

(declare-fun condMapEmpty!17661 () Bool)

(declare-fun mapDefault!17661 () ValueCell!5003)

