; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39408 () Bool)

(assert start!39408)

(declare-fun b_free!9667 () Bool)

(declare-fun b_next!9667 () Bool)

(assert (=> start!39408 (= b_free!9667 (not b_next!9667))))

(declare-fun tp!34530 () Bool)

(declare-fun b_and!17227 () Bool)

(assert (=> start!39408 (= tp!34530 b_and!17227)))

(declare-fun b!418769 () Bool)

(declare-fun res!244154 () Bool)

(declare-fun e!249654 () Bool)

(assert (=> b!418769 (=> (not res!244154) (not e!249654))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25469 0))(
  ( (array!25470 (arr!12181 (Array (_ BitVec 32) (_ BitVec 64))) (size!12533 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25469)

(assert (=> b!418769 (= res!244154 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12533 _keys!709))))))

(declare-fun res!244156 () Bool)

(assert (=> start!39408 (=> (not res!244156) (not e!249654))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39408 (= res!244156 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12533 _keys!709))))))

(assert (=> start!39408 e!249654))

(declare-fun tp_is_empty!10819 () Bool)

(assert (=> start!39408 tp_is_empty!10819))

(assert (=> start!39408 tp!34530))

(assert (=> start!39408 true))

(declare-datatypes ((V!15531 0))(
  ( (V!15532 (val!5454 Int)) )
))
(declare-datatypes ((ValueCell!5066 0))(
  ( (ValueCellFull!5066 (v!7697 V!15531)) (EmptyCell!5066) )
))
(declare-datatypes ((array!25471 0))(
  ( (array!25472 (arr!12182 (Array (_ BitVec 32) ValueCell!5066)) (size!12534 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25471)

(declare-fun e!249655 () Bool)

(declare-fun array_inv!8882 (array!25471) Bool)

(assert (=> start!39408 (and (array_inv!8882 _values!549) e!249655)))

(declare-fun array_inv!8883 (array!25469) Bool)

(assert (=> start!39408 (array_inv!8883 _keys!709)))

(declare-fun b!418770 () Bool)

(declare-fun res!244146 () Bool)

(assert (=> b!418770 (=> (not res!244146) (not e!249654))))

(assert (=> b!418770 (= res!244146 (or (= (select (arr!12181 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12181 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418771 () Bool)

(declare-fun res!244145 () Bool)

(assert (=> b!418771 (=> (not res!244145) (not e!249654))))

(declare-datatypes ((List!7110 0))(
  ( (Nil!7107) (Cons!7106 (h!7962 (_ BitVec 64)) (t!12450 List!7110)) )
))
(declare-fun arrayNoDuplicates!0 (array!25469 (_ BitVec 32) List!7110) Bool)

(assert (=> b!418771 (= res!244145 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7107))))

(declare-fun b!418772 () Bool)

(declare-fun res!244150 () Bool)

(assert (=> b!418772 (=> (not res!244150) (not e!249654))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25469 (_ BitVec 32)) Bool)

(assert (=> b!418772 (= res!244150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418773 () Bool)

(declare-fun e!249647 () Bool)

(assert (=> b!418773 (= e!249647 true)))

(declare-datatypes ((tuple2!7062 0))(
  ( (tuple2!7063 (_1!3541 (_ BitVec 64)) (_2!3541 V!15531)) )
))
(declare-fun lt!192043 () tuple2!7062)

(declare-fun lt!192050 () V!15531)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((List!7111 0))(
  ( (Nil!7108) (Cons!7107 (h!7963 tuple2!7062) (t!12451 List!7111)) )
))
(declare-datatypes ((ListLongMap!5989 0))(
  ( (ListLongMap!5990 (toList!3010 List!7111)) )
))
(declare-fun lt!192051 () ListLongMap!5989)

(declare-fun +!1217 (ListLongMap!5989 tuple2!7062) ListLongMap!5989)

(assert (=> b!418773 (= (+!1217 lt!192051 lt!192043) (+!1217 (+!1217 lt!192051 (tuple2!7063 k!794 lt!192050)) lt!192043))))

(declare-fun lt!192042 () V!15531)

(assert (=> b!418773 (= lt!192043 (tuple2!7063 k!794 lt!192042))))

(declare-datatypes ((Unit!12337 0))(
  ( (Unit!12338) )
))
(declare-fun lt!192046 () Unit!12337)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!39 (ListLongMap!5989 (_ BitVec 64) V!15531 V!15531) Unit!12337)

(assert (=> b!418773 (= lt!192046 (addSameAsAddTwiceSameKeyDiffValues!39 lt!192051 k!794 lt!192050 lt!192042))))

(declare-fun lt!192045 () V!15531)

(declare-fun get!6044 (ValueCell!5066 V!15531) V!15531)

(assert (=> b!418773 (= lt!192050 (get!6044 (select (arr!12182 _values!549) from!863) lt!192045))))

(declare-fun lt!192049 () ListLongMap!5989)

(declare-fun lt!192044 () array!25469)

(assert (=> b!418773 (= lt!192049 (+!1217 lt!192051 (tuple2!7063 (select (arr!12181 lt!192044) from!863) lt!192042)))))

(declare-fun v!412 () V!15531)

(assert (=> b!418773 (= lt!192042 (get!6044 (select (store (arr!12182 _values!549) i!563 (ValueCellFull!5066 v!412)) from!863) lt!192045))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!701 (Int (_ BitVec 64)) V!15531)

(assert (=> b!418773 (= lt!192045 (dynLambda!701 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15531)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15531)

(declare-fun lt!192047 () array!25471)

(declare-fun getCurrentListMapNoExtraKeys!1213 (array!25469 array!25471 (_ BitVec 32) (_ BitVec 32) V!15531 V!15531 (_ BitVec 32) Int) ListLongMap!5989)

(assert (=> b!418773 (= lt!192051 (getCurrentListMapNoExtraKeys!1213 lt!192044 lt!192047 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17850 () Bool)

(declare-fun mapRes!17850 () Bool)

(declare-fun tp!34529 () Bool)

(declare-fun e!249652 () Bool)

(assert (=> mapNonEmpty!17850 (= mapRes!17850 (and tp!34529 e!249652))))

(declare-fun mapRest!17850 () (Array (_ BitVec 32) ValueCell!5066))

(declare-fun mapValue!17850 () ValueCell!5066)

(declare-fun mapKey!17850 () (_ BitVec 32))

(assert (=> mapNonEmpty!17850 (= (arr!12182 _values!549) (store mapRest!17850 mapKey!17850 mapValue!17850))))

(declare-fun b!418774 () Bool)

(assert (=> b!418774 (= e!249652 tp_is_empty!10819)))

(declare-fun b!418775 () Bool)

(declare-fun e!249649 () Bool)

(declare-fun e!249653 () Bool)

(assert (=> b!418775 (= e!249649 e!249653)))

(declare-fun res!244151 () Bool)

(assert (=> b!418775 (=> (not res!244151) (not e!249653))))

(assert (=> b!418775 (= res!244151 (= from!863 i!563))))

(assert (=> b!418775 (= lt!192049 (getCurrentListMapNoExtraKeys!1213 lt!192044 lt!192047 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418775 (= lt!192047 (array!25472 (store (arr!12182 _values!549) i!563 (ValueCellFull!5066 v!412)) (size!12534 _values!549)))))

(declare-fun lt!192041 () ListLongMap!5989)

(assert (=> b!418775 (= lt!192041 (getCurrentListMapNoExtraKeys!1213 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418776 () Bool)

(declare-fun res!244158 () Bool)

(assert (=> b!418776 (=> (not res!244158) (not e!249654))))

(declare-fun arrayContainsKey!0 (array!25469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418776 (= res!244158 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!418777 () Bool)

(declare-fun res!244148 () Bool)

(assert (=> b!418777 (=> (not res!244148) (not e!249654))))

(assert (=> b!418777 (= res!244148 (and (= (size!12534 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12533 _keys!709) (size!12534 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17850 () Bool)

(assert (=> mapIsEmpty!17850 mapRes!17850))

(declare-fun b!418778 () Bool)

(declare-fun res!244152 () Bool)

(assert (=> b!418778 (=> (not res!244152) (not e!249654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418778 (= res!244152 (validKeyInArray!0 k!794))))

(declare-fun b!418779 () Bool)

(assert (=> b!418779 (= e!249654 e!249649)))

(declare-fun res!244149 () Bool)

(assert (=> b!418779 (=> (not res!244149) (not e!249649))))

(assert (=> b!418779 (= res!244149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192044 mask!1025))))

(assert (=> b!418779 (= lt!192044 (array!25470 (store (arr!12181 _keys!709) i!563 k!794) (size!12533 _keys!709)))))

(declare-fun e!249648 () Bool)

(declare-fun call!29177 () ListLongMap!5989)

(declare-fun b!418780 () Bool)

(declare-fun call!29176 () ListLongMap!5989)

(assert (=> b!418780 (= e!249648 (= call!29176 (+!1217 call!29177 (tuple2!7063 k!794 v!412))))))

(declare-fun b!418781 () Bool)

(declare-fun e!249651 () Bool)

(assert (=> b!418781 (= e!249655 (and e!249651 mapRes!17850))))

(declare-fun condMapEmpty!17850 () Bool)

(declare-fun mapDefault!17850 () ValueCell!5066)

