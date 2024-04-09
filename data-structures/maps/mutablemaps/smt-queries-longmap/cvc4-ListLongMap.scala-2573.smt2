; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39268 () Bool)

(assert start!39268)

(declare-fun b_free!9527 () Bool)

(declare-fun b_next!9527 () Bool)

(assert (=> start!39268 (= b_free!9527 (not b_next!9527))))

(declare-fun tp!34109 () Bool)

(declare-fun b_and!16947 () Bool)

(assert (=> start!39268 (= tp!34109 b_and!16947)))

(declare-fun b!414639 () Bool)

(declare-fun res!241206 () Bool)

(declare-fun e!247765 () Bool)

(assert (=> b!414639 (=> (not res!241206) (not e!247765))))

(declare-datatypes ((array!25195 0))(
  ( (array!25196 (arr!12044 (Array (_ BitVec 32) (_ BitVec 64))) (size!12396 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25195)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15343 0))(
  ( (V!15344 (val!5384 Int)) )
))
(declare-datatypes ((ValueCell!4996 0))(
  ( (ValueCellFull!4996 (v!7627 V!15343)) (EmptyCell!4996) )
))
(declare-datatypes ((array!25197 0))(
  ( (array!25198 (arr!12045 (Array (_ BitVec 32) ValueCell!4996)) (size!12397 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25197)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!414639 (= res!241206 (and (= (size!12397 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12396 _keys!709) (size!12397 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414640 () Bool)

(declare-fun e!247764 () Bool)

(assert (=> b!414640 (= e!247764 true)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!190061 () array!25195)

(declare-fun minValue!515 () V!15343)

(declare-datatypes ((tuple2!6932 0))(
  ( (tuple2!6933 (_1!3476 (_ BitVec 64)) (_2!3476 V!15343)) )
))
(declare-datatypes ((List!6990 0))(
  ( (Nil!6987) (Cons!6986 (h!7842 tuple2!6932) (t!12190 List!6990)) )
))
(declare-datatypes ((ListLongMap!5859 0))(
  ( (ListLongMap!5860 (toList!2945 List!6990)) )
))
(declare-fun lt!190064 () ListLongMap!5859)

(declare-fun zeroValue!515 () V!15343)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!190065 () array!25197)

(declare-fun +!1161 (ListLongMap!5859 tuple2!6932) ListLongMap!5859)

(declare-fun getCurrentListMapNoExtraKeys!1152 (array!25195 array!25197 (_ BitVec 32) (_ BitVec 32) V!15343 V!15343 (_ BitVec 32) Int) ListLongMap!5859)

(declare-fun get!5946 (ValueCell!4996 V!15343) V!15343)

(declare-fun dynLambda!651 (Int (_ BitVec 64)) V!15343)

(assert (=> b!414640 (= lt!190064 (+!1161 (getCurrentListMapNoExtraKeys!1152 lt!190061 lt!190065 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6933 (select (arr!12044 lt!190061) from!863) (get!5946 (select (arr!12045 lt!190065) from!863) (dynLambda!651 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!17640 () Bool)

(declare-fun mapRes!17640 () Bool)

(assert (=> mapIsEmpty!17640 mapRes!17640))

(declare-fun b!414641 () Bool)

(declare-fun res!241207 () Bool)

(assert (=> b!414641 (=> (not res!241207) (not e!247765))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414641 (= res!241207 (validKeyInArray!0 k!794))))

(declare-fun b!414642 () Bool)

(declare-fun res!241209 () Bool)

(declare-fun e!247763 () Bool)

(assert (=> b!414642 (=> (not res!241209) (not e!247763))))

(declare-datatypes ((List!6991 0))(
  ( (Nil!6988) (Cons!6987 (h!7843 (_ BitVec 64)) (t!12191 List!6991)) )
))
(declare-fun arrayNoDuplicates!0 (array!25195 (_ BitVec 32) List!6991) Bool)

(assert (=> b!414642 (= res!241209 (arrayNoDuplicates!0 lt!190061 #b00000000000000000000000000000000 Nil!6988))))

(declare-fun b!414643 () Bool)

(declare-fun res!241211 () Bool)

(assert (=> b!414643 (=> (not res!241211) (not e!247765))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414643 (= res!241211 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12396 _keys!709))))))

(declare-fun res!241208 () Bool)

(assert (=> start!39268 (=> (not res!241208) (not e!247765))))

(assert (=> start!39268 (= res!241208 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12396 _keys!709))))))

(assert (=> start!39268 e!247765))

(declare-fun tp_is_empty!10679 () Bool)

(assert (=> start!39268 tp_is_empty!10679))

(assert (=> start!39268 tp!34109))

(assert (=> start!39268 true))

(declare-fun e!247758 () Bool)

(declare-fun array_inv!8782 (array!25197) Bool)

(assert (=> start!39268 (and (array_inv!8782 _values!549) e!247758)))

(declare-fun array_inv!8783 (array!25195) Bool)

(assert (=> start!39268 (array_inv!8783 _keys!709)))

(declare-fun b!414644 () Bool)

(declare-fun e!247759 () Bool)

(assert (=> b!414644 (= e!247759 tp_is_empty!10679)))

(declare-fun b!414645 () Bool)

(declare-fun res!241214 () Bool)

(assert (=> b!414645 (=> (not res!241214) (not e!247765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414645 (= res!241214 (validMask!0 mask!1025))))

(declare-fun c!54929 () Bool)

(declare-fun bm!28753 () Bool)

(declare-fun call!28757 () ListLongMap!5859)

(assert (=> bm!28753 (= call!28757 (getCurrentListMapNoExtraKeys!1152 (ite c!54929 _keys!709 lt!190061) (ite c!54929 _values!549 lt!190065) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414646 () Bool)

(declare-fun res!241212 () Bool)

(assert (=> b!414646 (=> (not res!241212) (not e!247765))))

(assert (=> b!414646 (= res!241212 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6988))))

(declare-fun b!414647 () Bool)

(declare-fun e!247757 () Bool)

(assert (=> b!414647 (= e!247758 (and e!247757 mapRes!17640))))

(declare-fun condMapEmpty!17640 () Bool)

(declare-fun mapDefault!17640 () ValueCell!4996)

