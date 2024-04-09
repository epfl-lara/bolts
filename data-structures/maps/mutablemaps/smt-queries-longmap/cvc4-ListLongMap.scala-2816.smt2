; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40818 () Bool)

(assert start!40818)

(declare-fun b_free!10799 () Bool)

(declare-fun b_next!10799 () Bool)

(assert (=> start!40818 (= b_free!10799 (not b_next!10799))))

(declare-fun tp!38219 () Bool)

(declare-fun b_and!18903 () Bool)

(assert (=> start!40818 (= tp!38219 b_and!18903)))

(declare-fun b!452748 () Bool)

(declare-fun res!269806 () Bool)

(declare-fun e!265040 () Bool)

(assert (=> b!452748 (=> (not res!269806) (not e!265040))))

(declare-datatypes ((array!28041 0))(
  ( (array!28042 (arr!13462 (Array (_ BitVec 32) (_ BitVec 64))) (size!13814 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28041)

(declare-datatypes ((List!8100 0))(
  ( (Nil!8097) (Cons!8096 (h!8952 (_ BitVec 64)) (t!13930 List!8100)) )
))
(declare-fun arrayNoDuplicates!0 (array!28041 (_ BitVec 32) List!8100) Bool)

(assert (=> b!452748 (= res!269806 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8097))))

(declare-fun mapNonEmpty!19842 () Bool)

(declare-fun mapRes!19842 () Bool)

(declare-fun tp!38220 () Bool)

(declare-fun e!265039 () Bool)

(assert (=> mapNonEmpty!19842 (= mapRes!19842 (and tp!38220 e!265039))))

(declare-datatypes ((V!17287 0))(
  ( (V!17288 (val!6113 Int)) )
))
(declare-datatypes ((ValueCell!5725 0))(
  ( (ValueCellFull!5725 (v!8368 V!17287)) (EmptyCell!5725) )
))
(declare-fun mapRest!19842 () (Array (_ BitVec 32) ValueCell!5725))

(declare-datatypes ((array!28043 0))(
  ( (array!28044 (arr!13463 (Array (_ BitVec 32) ValueCell!5725)) (size!13815 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28043)

(declare-fun mapKey!19842 () (_ BitVec 32))

(declare-fun mapValue!19842 () ValueCell!5725)

(assert (=> mapNonEmpty!19842 (= (arr!13463 _values!549) (store mapRest!19842 mapKey!19842 mapValue!19842))))

(declare-fun b!452749 () Bool)

(declare-fun e!265036 () Bool)

(declare-fun tp_is_empty!12137 () Bool)

(assert (=> b!452749 (= e!265036 tp_is_empty!12137)))

(declare-fun mapIsEmpty!19842 () Bool)

(assert (=> mapIsEmpty!19842 mapRes!19842))

(declare-fun b!452750 () Bool)

(declare-fun e!265033 () Bool)

(declare-fun e!265041 () Bool)

(assert (=> b!452750 (= e!265033 (not e!265041))))

(declare-fun res!269802 () Bool)

(assert (=> b!452750 (=> res!269802 e!265041)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452750 (= res!269802 (validKeyInArray!0 (select (arr!13462 _keys!709) from!863)))))

(declare-fun e!265037 () Bool)

(assert (=> b!452750 e!265037))

(declare-fun c!56072 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452750 (= c!56072 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17287)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17287)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!13187 0))(
  ( (Unit!13188) )
))
(declare-fun lt!205491 () Unit!13187)

(declare-fun v!412 () V!17287)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!710 (array!28041 array!28043 (_ BitVec 32) (_ BitVec 32) V!17287 V!17287 (_ BitVec 32) (_ BitVec 64) V!17287 (_ BitVec 32) Int) Unit!13187)

(assert (=> b!452750 (= lt!205491 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!710 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((tuple2!7998 0))(
  ( (tuple2!7999 (_1!4009 (_ BitVec 64)) (_2!4009 V!17287)) )
))
(declare-datatypes ((List!8101 0))(
  ( (Nil!8098) (Cons!8097 (h!8953 tuple2!7998) (t!13931 List!8101)) )
))
(declare-datatypes ((ListLongMap!6925 0))(
  ( (ListLongMap!6926 (toList!3478 List!8101)) )
))
(declare-fun call!30007 () ListLongMap!6925)

(declare-fun bm!30004 () Bool)

(declare-fun lt!205486 () array!28041)

(declare-fun lt!205483 () array!28043)

(declare-fun getCurrentListMapNoExtraKeys!1654 (array!28041 array!28043 (_ BitVec 32) (_ BitVec 32) V!17287 V!17287 (_ BitVec 32) Int) ListLongMap!6925)

(assert (=> bm!30004 (= call!30007 (getCurrentListMapNoExtraKeys!1654 (ite c!56072 _keys!709 lt!205486) (ite c!56072 _values!549 lt!205483) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452751 () Bool)

(declare-fun res!269808 () Bool)

(assert (=> b!452751 (=> (not res!269808) (not e!265040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452751 (= res!269808 (validMask!0 mask!1025))))

(declare-fun b!452752 () Bool)

(declare-fun res!269809 () Bool)

(assert (=> b!452752 (=> (not res!269809) (not e!265040))))

(assert (=> b!452752 (= res!269809 (validKeyInArray!0 k!794))))

(declare-fun b!452753 () Bool)

(declare-fun res!269800 () Bool)

(assert (=> b!452753 (=> (not res!269800) (not e!265040))))

(assert (=> b!452753 (= res!269800 (and (= (size!13815 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13814 _keys!709) (size!13815 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452754 () Bool)

(declare-fun res!269810 () Bool)

(declare-fun e!265035 () Bool)

(assert (=> b!452754 (=> (not res!269810) (not e!265035))))

(assert (=> b!452754 (= res!269810 (arrayNoDuplicates!0 lt!205486 #b00000000000000000000000000000000 Nil!8097))))

(declare-fun b!452755 () Bool)

(declare-fun call!30008 () ListLongMap!6925)

(assert (=> b!452755 (= e!265037 (= call!30007 call!30008))))

(declare-fun b!452756 () Bool)

(assert (=> b!452756 (= e!265041 true)))

(declare-fun lt!205484 () tuple2!7998)

(declare-fun lt!205482 () V!17287)

(declare-fun lt!205489 () ListLongMap!6925)

(declare-fun +!1543 (ListLongMap!6925 tuple2!7998) ListLongMap!6925)

(assert (=> b!452756 (= (+!1543 lt!205489 lt!205484) (+!1543 (+!1543 lt!205489 (tuple2!7999 k!794 lt!205482)) lt!205484))))

(declare-fun lt!205487 () V!17287)

(assert (=> b!452756 (= lt!205484 (tuple2!7999 k!794 lt!205487))))

(declare-fun lt!205488 () Unit!13187)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!88 (ListLongMap!6925 (_ BitVec 64) V!17287 V!17287) Unit!13187)

(assert (=> b!452756 (= lt!205488 (addSameAsAddTwiceSameKeyDiffValues!88 lt!205489 k!794 lt!205482 lt!205487))))

(declare-fun lt!205485 () V!17287)

(declare-fun get!6649 (ValueCell!5725 V!17287) V!17287)

(assert (=> b!452756 (= lt!205482 (get!6649 (select (arr!13463 _values!549) from!863) lt!205485))))

(declare-fun lt!205481 () ListLongMap!6925)

(assert (=> b!452756 (= lt!205481 (+!1543 lt!205489 (tuple2!7999 (select (arr!13462 lt!205486) from!863) lt!205487)))))

(assert (=> b!452756 (= lt!205487 (get!6649 (select (store (arr!13463 _values!549) i!563 (ValueCellFull!5725 v!412)) from!863) lt!205485))))

(declare-fun dynLambda!866 (Int (_ BitVec 64)) V!17287)

(assert (=> b!452756 (= lt!205485 (dynLambda!866 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!452756 (= lt!205489 (getCurrentListMapNoExtraKeys!1654 lt!205486 lt!205483 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452757 () Bool)

(declare-fun res!269804 () Bool)

(assert (=> b!452757 (=> (not res!269804) (not e!265040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28041 (_ BitVec 32)) Bool)

(assert (=> b!452757 (= res!269804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452758 () Bool)

(declare-fun res!269807 () Bool)

(assert (=> b!452758 (=> (not res!269807) (not e!265040))))

(assert (=> b!452758 (= res!269807 (or (= (select (arr!13462 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13462 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452759 () Bool)

(declare-fun res!269803 () Bool)

(assert (=> b!452759 (=> (not res!269803) (not e!265035))))

(assert (=> b!452759 (= res!269803 (bvsle from!863 i!563))))

(declare-fun res!269797 () Bool)

(assert (=> start!40818 (=> (not res!269797) (not e!265040))))

(assert (=> start!40818 (= res!269797 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13814 _keys!709))))))

(assert (=> start!40818 e!265040))

(assert (=> start!40818 tp_is_empty!12137))

(assert (=> start!40818 tp!38219))

(assert (=> start!40818 true))

(declare-fun e!265038 () Bool)

(declare-fun array_inv!9746 (array!28043) Bool)

(assert (=> start!40818 (and (array_inv!9746 _values!549) e!265038)))

(declare-fun array_inv!9747 (array!28041) Bool)

(assert (=> start!40818 (array_inv!9747 _keys!709)))

(declare-fun b!452760 () Bool)

(declare-fun res!269801 () Bool)

(assert (=> b!452760 (=> (not res!269801) (not e!265040))))

(declare-fun arrayContainsKey!0 (array!28041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452760 (= res!269801 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!452761 () Bool)

(assert (=> b!452761 (= e!265039 tp_is_empty!12137)))

(declare-fun bm!30005 () Bool)

(assert (=> bm!30005 (= call!30008 (getCurrentListMapNoExtraKeys!1654 (ite c!56072 lt!205486 _keys!709) (ite c!56072 lt!205483 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452762 () Bool)

(assert (=> b!452762 (= e!265035 e!265033)))

(declare-fun res!269798 () Bool)

(assert (=> b!452762 (=> (not res!269798) (not e!265033))))

(assert (=> b!452762 (= res!269798 (= from!863 i!563))))

(assert (=> b!452762 (= lt!205481 (getCurrentListMapNoExtraKeys!1654 lt!205486 lt!205483 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452762 (= lt!205483 (array!28044 (store (arr!13463 _values!549) i!563 (ValueCellFull!5725 v!412)) (size!13815 _values!549)))))

(declare-fun lt!205490 () ListLongMap!6925)

(assert (=> b!452762 (= lt!205490 (getCurrentListMapNoExtraKeys!1654 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452763 () Bool)

(declare-fun res!269805 () Bool)

(assert (=> b!452763 (=> (not res!269805) (not e!265040))))

(assert (=> b!452763 (= res!269805 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13814 _keys!709))))))

(declare-fun b!452764 () Bool)

(assert (=> b!452764 (= e!265038 (and e!265036 mapRes!19842))))

(declare-fun condMapEmpty!19842 () Bool)

(declare-fun mapDefault!19842 () ValueCell!5725)

