; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38568 () Bool)

(assert start!38568)

(declare-fun b_free!9097 () Bool)

(declare-fun b_next!9097 () Bool)

(assert (=> start!38568 (= b_free!9097 (not b_next!9097))))

(declare-fun tp!32415 () Bool)

(declare-fun b_and!16501 () Bool)

(assert (=> start!38568 (= tp!32415 b_and!16501)))

(declare-fun b!398737 () Bool)

(declare-fun res!229279 () Bool)

(declare-fun e!240917 () Bool)

(assert (=> b!398737 (=> (not res!229279) (not e!240917))))

(declare-datatypes ((array!23837 0))(
  ( (array!23838 (arr!11365 (Array (_ BitVec 32) (_ BitVec 64))) (size!11717 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23837)

(declare-datatypes ((List!6548 0))(
  ( (Nil!6545) (Cons!6544 (h!7400 (_ BitVec 64)) (t!11730 List!6548)) )
))
(declare-fun arrayNoDuplicates!0 (array!23837 (_ BitVec 32) List!6548) Bool)

(assert (=> b!398737 (= res!229279 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6545))))

(declare-fun b!398738 () Bool)

(declare-fun res!229283 () Bool)

(assert (=> b!398738 (=> (not res!229283) (not e!240917))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398738 (= res!229283 (validKeyInArray!0 k!794))))

(declare-fun b!398739 () Bool)

(declare-fun e!240915 () Bool)

(declare-fun tp_is_empty!9979 () Bool)

(assert (=> b!398739 (= e!240915 tp_is_empty!9979)))

(declare-fun b!398740 () Bool)

(declare-fun res!229273 () Bool)

(assert (=> b!398740 (=> (not res!229273) (not e!240917))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23837 (_ BitVec 32)) Bool)

(assert (=> b!398740 (= res!229273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398741 () Bool)

(declare-fun res!229281 () Bool)

(assert (=> b!398741 (=> (not res!229281) (not e!240917))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398741 (= res!229281 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11717 _keys!709))))))

(declare-fun mapIsEmpty!16590 () Bool)

(declare-fun mapRes!16590 () Bool)

(assert (=> mapIsEmpty!16590 mapRes!16590))

(declare-fun b!398742 () Bool)

(declare-fun e!240914 () Bool)

(assert (=> b!398742 (= e!240917 e!240914)))

(declare-fun res!229275 () Bool)

(assert (=> b!398742 (=> (not res!229275) (not e!240914))))

(declare-fun lt!187479 () array!23837)

(assert (=> b!398742 (= res!229275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187479 mask!1025))))

(assert (=> b!398742 (= lt!187479 (array!23838 (store (arr!11365 _keys!709) i!563 k!794) (size!11717 _keys!709)))))

(declare-fun res!229276 () Bool)

(assert (=> start!38568 (=> (not res!229276) (not e!240917))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38568 (= res!229276 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11717 _keys!709))))))

(assert (=> start!38568 e!240917))

(assert (=> start!38568 tp_is_empty!9979))

(assert (=> start!38568 tp!32415))

(assert (=> start!38568 true))

(declare-datatypes ((V!14411 0))(
  ( (V!14412 (val!5034 Int)) )
))
(declare-datatypes ((ValueCell!4646 0))(
  ( (ValueCellFull!4646 (v!7277 V!14411)) (EmptyCell!4646) )
))
(declare-datatypes ((array!23839 0))(
  ( (array!23840 (arr!11366 (Array (_ BitVec 32) ValueCell!4646)) (size!11718 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23839)

(declare-fun e!240913 () Bool)

(declare-fun array_inv!8318 (array!23839) Bool)

(assert (=> start!38568 (and (array_inv!8318 _values!549) e!240913)))

(declare-fun array_inv!8319 (array!23837) Bool)

(assert (=> start!38568 (array_inv!8319 _keys!709)))

(declare-fun b!398743 () Bool)

(declare-fun e!240919 () Bool)

(declare-datatypes ((tuple2!6592 0))(
  ( (tuple2!6593 (_1!3306 (_ BitVec 64)) (_2!3306 V!14411)) )
))
(declare-datatypes ((List!6549 0))(
  ( (Nil!6546) (Cons!6545 (h!7401 tuple2!6592) (t!11731 List!6549)) )
))
(declare-datatypes ((ListLongMap!5519 0))(
  ( (ListLongMap!5520 (toList!2775 List!6549)) )
))
(declare-fun call!27953 () ListLongMap!5519)

(declare-fun call!27952 () ListLongMap!5519)

(assert (=> b!398743 (= e!240919 (= call!27953 call!27952))))

(declare-fun mapNonEmpty!16590 () Bool)

(declare-fun tp!32414 () Bool)

(assert (=> mapNonEmpty!16590 (= mapRes!16590 (and tp!32414 e!240915))))

(declare-fun mapValue!16590 () ValueCell!4646)

(declare-fun mapRest!16590 () (Array (_ BitVec 32) ValueCell!4646))

(declare-fun mapKey!16590 () (_ BitVec 32))

(assert (=> mapNonEmpty!16590 (= (arr!11366 _values!549) (store mapRest!16590 mapKey!16590 mapValue!16590))))

(declare-fun minValue!515 () V!14411)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14411)

(declare-fun bm!27949 () Bool)

(declare-fun c!54527 () Bool)

(declare-fun v!412 () V!14411)

(declare-fun getCurrentListMapNoExtraKeys!993 (array!23837 array!23839 (_ BitVec 32) (_ BitVec 32) V!14411 V!14411 (_ BitVec 32) Int) ListLongMap!5519)

(assert (=> bm!27949 (= call!27952 (getCurrentListMapNoExtraKeys!993 (ite c!54527 lt!187479 _keys!709) (ite c!54527 (array!23840 (store (arr!11366 _values!549) i!563 (ValueCellFull!4646 v!412)) (size!11718 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398744 () Bool)

(declare-fun res!229277 () Bool)

(assert (=> b!398744 (=> (not res!229277) (not e!240917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398744 (= res!229277 (validMask!0 mask!1025))))

(declare-fun b!398745 () Bool)

(declare-fun e!240918 () Bool)

(assert (=> b!398745 (= e!240918 tp_is_empty!9979)))

(declare-fun b!398746 () Bool)

(declare-fun res!229282 () Bool)

(assert (=> b!398746 (=> (not res!229282) (not e!240917))))

(assert (=> b!398746 (= res!229282 (or (= (select (arr!11365 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11365 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398747 () Bool)

(declare-fun +!1070 (ListLongMap!5519 tuple2!6592) ListLongMap!5519)

(assert (=> b!398747 (= e!240919 (= call!27952 (+!1070 call!27953 (tuple2!6593 k!794 v!412))))))

(declare-fun bm!27950 () Bool)

(assert (=> bm!27950 (= call!27953 (getCurrentListMapNoExtraKeys!993 (ite c!54527 _keys!709 lt!187479) (ite c!54527 _values!549 (array!23840 (store (arr!11366 _values!549) i!563 (ValueCellFull!4646 v!412)) (size!11718 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398748 () Bool)

(assert (=> b!398748 (= e!240913 (and e!240918 mapRes!16590))))

(declare-fun condMapEmpty!16590 () Bool)

(declare-fun mapDefault!16590 () ValueCell!4646)

