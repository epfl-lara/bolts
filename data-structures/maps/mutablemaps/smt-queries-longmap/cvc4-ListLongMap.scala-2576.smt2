; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39286 () Bool)

(assert start!39286)

(declare-fun b_free!9545 () Bool)

(declare-fun b_next!9545 () Bool)

(assert (=> start!39286 (= b_free!9545 (not b_next!9545))))

(declare-fun tp!34164 () Bool)

(declare-fun b_and!16983 () Bool)

(assert (=> start!39286 (= tp!34164 b_and!16983)))

(declare-fun res!241589 () Bool)

(declare-fun e!248005 () Bool)

(assert (=> start!39286 (=> (not res!241589) (not e!248005))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25231 0))(
  ( (array!25232 (arr!12062 (Array (_ BitVec 32) (_ BitVec 64))) (size!12414 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25231)

(assert (=> start!39286 (= res!241589 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12414 _keys!709))))))

(assert (=> start!39286 e!248005))

(declare-fun tp_is_empty!10697 () Bool)

(assert (=> start!39286 tp_is_empty!10697))

(assert (=> start!39286 tp!34164))

(assert (=> start!39286 true))

(declare-datatypes ((V!15367 0))(
  ( (V!15368 (val!5393 Int)) )
))
(declare-datatypes ((ValueCell!5005 0))(
  ( (ValueCellFull!5005 (v!7636 V!15367)) (EmptyCell!5005) )
))
(declare-datatypes ((array!25233 0))(
  ( (array!25234 (arr!12063 (Array (_ BitVec 32) ValueCell!5005)) (size!12415 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25233)

(declare-fun e!248001 () Bool)

(declare-fun array_inv!8798 (array!25233) Bool)

(assert (=> start!39286 (and (array_inv!8798 _values!549) e!248001)))

(declare-fun array_inv!8799 (array!25231) Bool)

(assert (=> start!39286 (array_inv!8799 _keys!709)))

(declare-fun b!415170 () Bool)

(declare-fun res!241590 () Bool)

(assert (=> b!415170 (=> (not res!241590) (not e!248005))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415170 (= res!241590 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12414 _keys!709))))))

(declare-fun e!248008 () Bool)

(declare-datatypes ((tuple2!6948 0))(
  ( (tuple2!6949 (_1!3484 (_ BitVec 64)) (_2!3484 V!15367)) )
))
(declare-datatypes ((List!7005 0))(
  ( (Nil!7002) (Cons!7001 (h!7857 tuple2!6948) (t!12223 List!7005)) )
))
(declare-datatypes ((ListLongMap!5875 0))(
  ( (ListLongMap!5876 (toList!2953 List!7005)) )
))
(declare-fun call!28810 () ListLongMap!5875)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!28811 () ListLongMap!5875)

(declare-fun v!412 () V!15367)

(declare-fun b!415171 () Bool)

(declare-fun +!1167 (ListLongMap!5875 tuple2!6948) ListLongMap!5875)

(assert (=> b!415171 (= e!248008 (= call!28811 (+!1167 call!28810 (tuple2!6949 k!794 v!412))))))

(declare-fun b!415172 () Bool)

(assert (=> b!415172 (= e!248008 (= call!28810 call!28811))))

(declare-fun c!54956 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190199 () array!25233)

(declare-fun lt!190198 () array!25231)

(declare-fun zeroValue!515 () V!15367)

(declare-fun bm!28807 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!15367)

(declare-fun getCurrentListMapNoExtraKeys!1158 (array!25231 array!25233 (_ BitVec 32) (_ BitVec 32) V!15367 V!15367 (_ BitVec 32) Int) ListLongMap!5875)

(assert (=> bm!28807 (= call!28810 (getCurrentListMapNoExtraKeys!1158 (ite c!54956 _keys!709 lt!190198) (ite c!54956 _values!549 lt!190199) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415173 () Bool)

(declare-fun e!248007 () Bool)

(assert (=> b!415173 (= e!248007 true)))

(declare-fun lt!190197 () ListLongMap!5875)

(declare-fun get!5957 (ValueCell!5005 V!15367) V!15367)

(declare-fun dynLambda!656 (Int (_ BitVec 64)) V!15367)

(assert (=> b!415173 (= lt!190197 (+!1167 (getCurrentListMapNoExtraKeys!1158 lt!190198 lt!190199 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6949 (select (arr!12062 lt!190198) from!863) (get!5957 (select (arr!12063 lt!190199) from!863) (dynLambda!656 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!415174 () Bool)

(declare-fun res!241593 () Bool)

(assert (=> b!415174 (=> (not res!241593) (not e!248005))))

(assert (=> b!415174 (= res!241593 (and (= (size!12415 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12414 _keys!709) (size!12415 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415175 () Bool)

(declare-fun e!248004 () Bool)

(assert (=> b!415175 (= e!248004 tp_is_empty!10697)))

(declare-fun b!415176 () Bool)

(declare-fun e!248006 () Bool)

(declare-fun e!248002 () Bool)

(assert (=> b!415176 (= e!248006 e!248002)))

(declare-fun res!241585 () Bool)

(assert (=> b!415176 (=> (not res!241585) (not e!248002))))

(assert (=> b!415176 (= res!241585 (= from!863 i!563))))

(assert (=> b!415176 (= lt!190197 (getCurrentListMapNoExtraKeys!1158 lt!190198 lt!190199 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415176 (= lt!190199 (array!25234 (store (arr!12063 _values!549) i!563 (ValueCellFull!5005 v!412)) (size!12415 _values!549)))))

(declare-fun lt!190196 () ListLongMap!5875)

(assert (=> b!415176 (= lt!190196 (getCurrentListMapNoExtraKeys!1158 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!28808 () Bool)

(assert (=> bm!28808 (= call!28811 (getCurrentListMapNoExtraKeys!1158 (ite c!54956 lt!190198 _keys!709) (ite c!54956 lt!190199 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415177 () Bool)

(assert (=> b!415177 (= e!248002 (not e!248007))))

(declare-fun res!241591 () Bool)

(assert (=> b!415177 (=> res!241591 e!248007)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415177 (= res!241591 (validKeyInArray!0 (select (arr!12062 _keys!709) from!863)))))

(assert (=> b!415177 e!248008))

(assert (=> b!415177 (= c!54956 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12235 0))(
  ( (Unit!12236) )
))
(declare-fun lt!190200 () Unit!12235)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!380 (array!25231 array!25233 (_ BitVec 32) (_ BitVec 32) V!15367 V!15367 (_ BitVec 32) (_ BitVec 64) V!15367 (_ BitVec 32) Int) Unit!12235)

(assert (=> b!415177 (= lt!190200 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!380 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415178 () Bool)

(declare-fun res!241587 () Bool)

(assert (=> b!415178 (=> (not res!241587) (not e!248005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415178 (= res!241587 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17667 () Bool)

(declare-fun mapRes!17667 () Bool)

(declare-fun tp!34163 () Bool)

(assert (=> mapNonEmpty!17667 (= mapRes!17667 (and tp!34163 e!248004))))

(declare-fun mapRest!17667 () (Array (_ BitVec 32) ValueCell!5005))

(declare-fun mapKey!17667 () (_ BitVec 32))

(declare-fun mapValue!17667 () ValueCell!5005)

(assert (=> mapNonEmpty!17667 (= (arr!12063 _values!549) (store mapRest!17667 mapKey!17667 mapValue!17667))))

(declare-fun b!415179 () Bool)

(assert (=> b!415179 (= e!248005 e!248006)))

(declare-fun res!241596 () Bool)

(assert (=> b!415179 (=> (not res!241596) (not e!248006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25231 (_ BitVec 32)) Bool)

(assert (=> b!415179 (= res!241596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190198 mask!1025))))

(assert (=> b!415179 (= lt!190198 (array!25232 (store (arr!12062 _keys!709) i!563 k!794) (size!12414 _keys!709)))))

(declare-fun b!415180 () Bool)

(declare-fun res!241588 () Bool)

(assert (=> b!415180 (=> (not res!241588) (not e!248005))))

(declare-fun arrayContainsKey!0 (array!25231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415180 (= res!241588 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!415181 () Bool)

(declare-fun e!248003 () Bool)

(assert (=> b!415181 (= e!248003 tp_is_empty!10697)))

(declare-fun b!415182 () Bool)

(assert (=> b!415182 (= e!248001 (and e!248003 mapRes!17667))))

(declare-fun condMapEmpty!17667 () Bool)

(declare-fun mapDefault!17667 () ValueCell!5005)

