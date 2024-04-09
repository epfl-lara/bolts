; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39342 () Bool)

(assert start!39342)

(declare-fun b_free!9601 () Bool)

(declare-fun b_next!9601 () Bool)

(assert (=> start!39342 (= b_free!9601 (not b_next!9601))))

(declare-fun tp!34331 () Bool)

(declare-fun b_and!17095 () Bool)

(assert (=> start!39342 (= tp!34331 b_and!17095)))

(declare-fun b!416822 () Bool)

(declare-fun res!242772 () Bool)

(declare-fun e!248760 () Bool)

(assert (=> b!416822 (=> (not res!242772) (not e!248760))))

(declare-datatypes ((array!25341 0))(
  ( (array!25342 (arr!12117 (Array (_ BitVec 32) (_ BitVec 64))) (size!12469 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25341)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25341 (_ BitVec 32)) Bool)

(assert (=> b!416822 (= res!242772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!242768 () Bool)

(assert (=> start!39342 (=> (not res!242768) (not e!248760))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39342 (= res!242768 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12469 _keys!709))))))

(assert (=> start!39342 e!248760))

(declare-fun tp_is_empty!10753 () Bool)

(assert (=> start!39342 tp_is_empty!10753))

(assert (=> start!39342 tp!34331))

(assert (=> start!39342 true))

(declare-datatypes ((V!15443 0))(
  ( (V!15444 (val!5421 Int)) )
))
(declare-datatypes ((ValueCell!5033 0))(
  ( (ValueCellFull!5033 (v!7664 V!15443)) (EmptyCell!5033) )
))
(declare-datatypes ((array!25343 0))(
  ( (array!25344 (arr!12118 (Array (_ BitVec 32) ValueCell!5033)) (size!12470 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25343)

(declare-fun e!248759 () Bool)

(declare-fun array_inv!8836 (array!25343) Bool)

(assert (=> start!39342 (and (array_inv!8836 _values!549) e!248759)))

(declare-fun array_inv!8837 (array!25341) Bool)

(assert (=> start!39342 (array_inv!8837 _keys!709)))

(declare-fun b!416823 () Bool)

(declare-fun res!242770 () Bool)

(assert (=> b!416823 (=> (not res!242770) (not e!248760))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416823 (= res!242770 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12469 _keys!709))))))

(declare-fun b!416824 () Bool)

(declare-fun res!242765 () Bool)

(assert (=> b!416824 (=> (not res!242765) (not e!248760))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416824 (= res!242765 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!416825 () Bool)

(declare-fun e!248763 () Bool)

(declare-fun e!248758 () Bool)

(assert (=> b!416825 (= e!248763 e!248758)))

(declare-fun res!242767 () Bool)

(assert (=> b!416825 (=> (not res!242767) (not e!248758))))

(assert (=> b!416825 (= res!242767 (= from!863 i!563))))

(declare-fun lt!190960 () array!25343)

(declare-fun minValue!515 () V!15443)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7002 0))(
  ( (tuple2!7003 (_1!3511 (_ BitVec 64)) (_2!3511 V!15443)) )
))
(declare-datatypes ((List!7055 0))(
  ( (Nil!7052) (Cons!7051 (h!7907 tuple2!7002) (t!12329 List!7055)) )
))
(declare-datatypes ((ListLongMap!5929 0))(
  ( (ListLongMap!5930 (toList!2980 List!7055)) )
))
(declare-fun lt!190959 () ListLongMap!5929)

(declare-fun zeroValue!515 () V!15443)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!190956 () array!25341)

(declare-fun getCurrentListMapNoExtraKeys!1183 (array!25341 array!25343 (_ BitVec 32) (_ BitVec 32) V!15443 V!15443 (_ BitVec 32) Int) ListLongMap!5929)

(assert (=> b!416825 (= lt!190959 (getCurrentListMapNoExtraKeys!1183 lt!190956 lt!190960 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15443)

(assert (=> b!416825 (= lt!190960 (array!25344 (store (arr!12118 _values!549) i!563 (ValueCellFull!5033 v!412)) (size!12470 _values!549)))))

(declare-fun lt!190958 () ListLongMap!5929)

(assert (=> b!416825 (= lt!190958 (getCurrentListMapNoExtraKeys!1183 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416826 () Bool)

(assert (=> b!416826 (= e!248760 e!248763)))

(declare-fun res!242761 () Bool)

(assert (=> b!416826 (=> (not res!242761) (not e!248763))))

(assert (=> b!416826 (= res!242761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190956 mask!1025))))

(assert (=> b!416826 (= lt!190956 (array!25342 (store (arr!12117 _keys!709) i!563 k!794) (size!12469 _keys!709)))))

(declare-fun mapIsEmpty!17751 () Bool)

(declare-fun mapRes!17751 () Bool)

(assert (=> mapIsEmpty!17751 mapRes!17751))

(declare-fun b!416827 () Bool)

(declare-fun res!242769 () Bool)

(assert (=> b!416827 (=> (not res!242769) (not e!248763))))

(declare-datatypes ((List!7056 0))(
  ( (Nil!7053) (Cons!7052 (h!7908 (_ BitVec 64)) (t!12330 List!7056)) )
))
(declare-fun arrayNoDuplicates!0 (array!25341 (_ BitVec 32) List!7056) Bool)

(assert (=> b!416827 (= res!242769 (arrayNoDuplicates!0 lt!190956 #b00000000000000000000000000000000 Nil!7053))))

(declare-fun b!416828 () Bool)

(declare-fun e!248756 () Bool)

(assert (=> b!416828 (= e!248756 true)))

(declare-fun lt!190954 () V!15443)

(declare-fun lt!190953 () ListLongMap!5929)

(declare-fun lt!190961 () tuple2!7002)

(declare-fun +!1191 (ListLongMap!5929 tuple2!7002) ListLongMap!5929)

(assert (=> b!416828 (= (+!1191 lt!190953 lt!190961) (+!1191 (+!1191 lt!190953 (tuple2!7003 k!794 lt!190954)) lt!190961))))

(declare-fun lt!190962 () V!15443)

(assert (=> b!416828 (= lt!190961 (tuple2!7003 k!794 lt!190962))))

(declare-datatypes ((Unit!12283 0))(
  ( (Unit!12284) )
))
(declare-fun lt!190952 () Unit!12283)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!14 (ListLongMap!5929 (_ BitVec 64) V!15443 V!15443) Unit!12283)

(assert (=> b!416828 (= lt!190952 (addSameAsAddTwiceSameKeyDiffValues!14 lt!190953 k!794 lt!190954 lt!190962))))

(declare-fun lt!190957 () V!15443)

(declare-fun get!5997 (ValueCell!5033 V!15443) V!15443)

(assert (=> b!416828 (= lt!190954 (get!5997 (select (arr!12118 _values!549) from!863) lt!190957))))

(assert (=> b!416828 (= lt!190959 (+!1191 lt!190953 (tuple2!7003 (select (arr!12117 lt!190956) from!863) lt!190962)))))

(assert (=> b!416828 (= lt!190962 (get!5997 (select (store (arr!12118 _values!549) i!563 (ValueCellFull!5033 v!412)) from!863) lt!190957))))

(declare-fun dynLambda!676 (Int (_ BitVec 64)) V!15443)

(assert (=> b!416828 (= lt!190957 (dynLambda!676 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!416828 (= lt!190953 (getCurrentListMapNoExtraKeys!1183 lt!190956 lt!190960 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416829 () Bool)

(declare-fun res!242763 () Bool)

(assert (=> b!416829 (=> (not res!242763) (not e!248763))))

(assert (=> b!416829 (= res!242763 (bvsle from!863 i!563))))

(declare-fun b!416830 () Bool)

(declare-fun e!248764 () Bool)

(assert (=> b!416830 (= e!248764 tp_is_empty!10753)))

(declare-fun b!416831 () Bool)

(declare-fun res!242759 () Bool)

(assert (=> b!416831 (=> (not res!242759) (not e!248760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416831 (= res!242759 (validKeyInArray!0 k!794))))

(declare-fun b!416832 () Bool)

(declare-fun call!28978 () ListLongMap!5929)

(declare-fun call!28979 () ListLongMap!5929)

(declare-fun e!248761 () Bool)

(assert (=> b!416832 (= e!248761 (= call!28979 (+!1191 call!28978 (tuple2!7003 k!794 v!412))))))

(declare-fun bm!28975 () Bool)

(declare-fun c!55040 () Bool)

(assert (=> bm!28975 (= call!28978 (getCurrentListMapNoExtraKeys!1183 (ite c!55040 _keys!709 lt!190956) (ite c!55040 _values!549 lt!190960) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416833 () Bool)

(declare-fun res!242762 () Bool)

(assert (=> b!416833 (=> (not res!242762) (not e!248760))))

(assert (=> b!416833 (= res!242762 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7053))))

(declare-fun mapNonEmpty!17751 () Bool)

(declare-fun tp!34332 () Bool)

(declare-fun e!248757 () Bool)

(assert (=> mapNonEmpty!17751 (= mapRes!17751 (and tp!34332 e!248757))))

(declare-fun mapRest!17751 () (Array (_ BitVec 32) ValueCell!5033))

(declare-fun mapKey!17751 () (_ BitVec 32))

(declare-fun mapValue!17751 () ValueCell!5033)

(assert (=> mapNonEmpty!17751 (= (arr!12118 _values!549) (store mapRest!17751 mapKey!17751 mapValue!17751))))

(declare-fun b!416834 () Bool)

(assert (=> b!416834 (= e!248757 tp_is_empty!10753)))

(declare-fun b!416835 () Bool)

(declare-fun res!242766 () Bool)

(assert (=> b!416835 (=> (not res!242766) (not e!248760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416835 (= res!242766 (validMask!0 mask!1025))))

(declare-fun b!416836 () Bool)

(assert (=> b!416836 (= e!248758 (not e!248756))))

(declare-fun res!242764 () Bool)

(assert (=> b!416836 (=> res!242764 e!248756)))

(assert (=> b!416836 (= res!242764 (validKeyInArray!0 (select (arr!12117 _keys!709) from!863)))))

(assert (=> b!416836 e!248761))

(assert (=> b!416836 (= c!55040 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190955 () Unit!12283)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!403 (array!25341 array!25343 (_ BitVec 32) (_ BitVec 32) V!15443 V!15443 (_ BitVec 32) (_ BitVec 64) V!15443 (_ BitVec 32) Int) Unit!12283)

(assert (=> b!416836 (= lt!190955 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!403 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416837 () Bool)

(assert (=> b!416837 (= e!248761 (= call!28978 call!28979))))

(declare-fun b!416838 () Bool)

(assert (=> b!416838 (= e!248759 (and e!248764 mapRes!17751))))

(declare-fun condMapEmpty!17751 () Bool)

(declare-fun mapDefault!17751 () ValueCell!5033)

