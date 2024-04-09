; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39280 () Bool)

(assert start!39280)

(declare-fun b_free!9539 () Bool)

(declare-fun b_next!9539 () Bool)

(assert (=> start!39280 (= b_free!9539 (not b_next!9539))))

(declare-fun tp!34146 () Bool)

(declare-fun b_and!16971 () Bool)

(assert (=> start!39280 (= tp!34146 b_and!16971)))

(declare-fun b!414993 () Bool)

(declare-fun res!241460 () Bool)

(declare-fun e!247922 () Bool)

(assert (=> b!414993 (=> (not res!241460) (not e!247922))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414993 (= res!241460 (bvsle from!863 i!563))))

(declare-fun b!414994 () Bool)

(declare-fun res!241467 () Bool)

(declare-fun e!247923 () Bool)

(assert (=> b!414994 (=> (not res!241467) (not e!247923))))

(declare-datatypes ((array!25219 0))(
  ( (array!25220 (arr!12056 (Array (_ BitVec 32) (_ BitVec 64))) (size!12408 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25219)

(assert (=> b!414994 (= res!241467 (or (= (select (arr!12056 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12056 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414995 () Bool)

(declare-fun e!247921 () Bool)

(assert (=> b!414995 (= e!247921 true)))

(declare-datatypes ((V!15359 0))(
  ( (V!15360 (val!5390 Int)) )
))
(declare-datatypes ((ValueCell!5002 0))(
  ( (ValueCellFull!5002 (v!7633 V!15359)) (EmptyCell!5002) )
))
(declare-datatypes ((array!25221 0))(
  ( (array!25222 (arr!12057 (Array (_ BitVec 32) ValueCell!5002)) (size!12409 (_ BitVec 32))) )
))
(declare-fun lt!190151 () array!25221)

(declare-fun minValue!515 () V!15359)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15359)

(declare-fun lt!190152 () array!25219)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6942 0))(
  ( (tuple2!6943 (_1!3481 (_ BitVec 64)) (_2!3481 V!15359)) )
))
(declare-datatypes ((List!6999 0))(
  ( (Nil!6996) (Cons!6995 (h!7851 tuple2!6942) (t!12211 List!6999)) )
))
(declare-datatypes ((ListLongMap!5869 0))(
  ( (ListLongMap!5870 (toList!2950 List!6999)) )
))
(declare-fun lt!190154 () ListLongMap!5869)

(declare-fun +!1165 (ListLongMap!5869 tuple2!6942) ListLongMap!5869)

(declare-fun getCurrentListMapNoExtraKeys!1155 (array!25219 array!25221 (_ BitVec 32) (_ BitVec 32) V!15359 V!15359 (_ BitVec 32) Int) ListLongMap!5869)

(declare-fun get!5953 (ValueCell!5002 V!15359) V!15359)

(declare-fun dynLambda!654 (Int (_ BitVec 64)) V!15359)

(assert (=> b!414995 (= lt!190154 (+!1165 (getCurrentListMapNoExtraKeys!1155 lt!190152 lt!190151 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6943 (select (arr!12056 lt!190152) from!863) (get!5953 (select (arr!12057 lt!190151) from!863) (dynLambda!654 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!17658 () Bool)

(declare-fun mapRes!17658 () Bool)

(assert (=> mapIsEmpty!17658 mapRes!17658))

(declare-fun b!414996 () Bool)

(declare-fun res!241461 () Bool)

(assert (=> b!414996 (=> (not res!241461) (not e!247923))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414996 (= res!241461 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!241469 () Bool)

(assert (=> start!39280 (=> (not res!241469) (not e!247923))))

(assert (=> start!39280 (= res!241469 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12408 _keys!709))))))

(assert (=> start!39280 e!247923))

(declare-fun tp_is_empty!10691 () Bool)

(assert (=> start!39280 tp_is_empty!10691))

(assert (=> start!39280 tp!34146))

(assert (=> start!39280 true))

(declare-fun _values!549 () array!25221)

(declare-fun e!247924 () Bool)

(declare-fun array_inv!8792 (array!25221) Bool)

(assert (=> start!39280 (and (array_inv!8792 _values!549) e!247924)))

(declare-fun array_inv!8793 (array!25219) Bool)

(assert (=> start!39280 (array_inv!8793 _keys!709)))

(declare-fun b!414997 () Bool)

(declare-fun e!247926 () Bool)

(assert (=> b!414997 (= e!247926 tp_is_empty!10691)))

(declare-fun b!414998 () Bool)

(declare-fun res!241457 () Bool)

(assert (=> b!414998 (=> (not res!241457) (not e!247923))))

(assert (=> b!414998 (= res!241457 (and (= (size!12409 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12408 _keys!709) (size!12409 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414999 () Bool)

(declare-fun e!247927 () Bool)

(assert (=> b!414999 (= e!247927 (not e!247921))))

(declare-fun res!241464 () Bool)

(assert (=> b!414999 (=> res!241464 e!247921)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414999 (= res!241464 (validKeyInArray!0 (select (arr!12056 _keys!709) from!863)))))

(declare-fun e!247919 () Bool)

(assert (=> b!414999 e!247919))

(declare-fun c!54947 () Bool)

(assert (=> b!414999 (= c!54947 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12231 0))(
  ( (Unit!12232) )
))
(declare-fun lt!190153 () Unit!12231)

(declare-fun v!412 () V!15359)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!378 (array!25219 array!25221 (_ BitVec 32) (_ BitVec 32) V!15359 V!15359 (_ BitVec 32) (_ BitVec 64) V!15359 (_ BitVec 32) Int) Unit!12231)

(assert (=> b!414999 (= lt!190153 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!378 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415000 () Bool)

(declare-fun res!241470 () Bool)

(assert (=> b!415000 (=> (not res!241470) (not e!247923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415000 (= res!241470 (validMask!0 mask!1025))))

(declare-fun b!415001 () Bool)

(declare-fun res!241458 () Bool)

(assert (=> b!415001 (=> (not res!241458) (not e!247923))))

(declare-datatypes ((List!7000 0))(
  ( (Nil!6997) (Cons!6996 (h!7852 (_ BitVec 64)) (t!12212 List!7000)) )
))
(declare-fun arrayNoDuplicates!0 (array!25219 (_ BitVec 32) List!7000) Bool)

(assert (=> b!415001 (= res!241458 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6997))))

(declare-fun b!415002 () Bool)

(declare-fun res!241468 () Bool)

(assert (=> b!415002 (=> (not res!241468) (not e!247922))))

(assert (=> b!415002 (= res!241468 (arrayNoDuplicates!0 lt!190152 #b00000000000000000000000000000000 Nil!6997))))

(declare-fun b!415003 () Bool)

(assert (=> b!415003 (= e!247922 e!247927)))

(declare-fun res!241459 () Bool)

(assert (=> b!415003 (=> (not res!241459) (not e!247927))))

(assert (=> b!415003 (= res!241459 (= from!863 i!563))))

(assert (=> b!415003 (= lt!190154 (getCurrentListMapNoExtraKeys!1155 lt!190152 lt!190151 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415003 (= lt!190151 (array!25222 (store (arr!12057 _values!549) i!563 (ValueCellFull!5002 v!412)) (size!12409 _values!549)))))

(declare-fun lt!190155 () ListLongMap!5869)

(assert (=> b!415003 (= lt!190155 (getCurrentListMapNoExtraKeys!1155 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415004 () Bool)

(assert (=> b!415004 (= e!247923 e!247922)))

(declare-fun res!241463 () Bool)

(assert (=> b!415004 (=> (not res!241463) (not e!247922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25219 (_ BitVec 32)) Bool)

(assert (=> b!415004 (= res!241463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190152 mask!1025))))

(assert (=> b!415004 (= lt!190152 (array!25220 (store (arr!12056 _keys!709) i!563 k!794) (size!12408 _keys!709)))))

(declare-fun b!415005 () Bool)

(declare-fun call!28792 () ListLongMap!5869)

(declare-fun call!28793 () ListLongMap!5869)

(assert (=> b!415005 (= e!247919 (= call!28793 (+!1165 call!28792 (tuple2!6943 k!794 v!412))))))

(declare-fun b!415006 () Bool)

(assert (=> b!415006 (= e!247924 (and e!247926 mapRes!17658))))

(declare-fun condMapEmpty!17658 () Bool)

(declare-fun mapDefault!17658 () ValueCell!5002)

