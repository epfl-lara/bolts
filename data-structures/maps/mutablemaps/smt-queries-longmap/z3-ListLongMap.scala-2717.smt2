; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40130 () Bool)

(assert start!40130)

(declare-fun b_free!10389 () Bool)

(declare-fun b_next!10389 () Bool)

(assert (=> start!40130 (= b_free!10389 (not b_next!10389))))

(declare-fun tp!36695 () Bool)

(declare-fun b_and!18375 () Bool)

(assert (=> start!40130 (= tp!36695 b_and!18375)))

(declare-fun b!438497 () Bool)

(declare-fun res!259042 () Bool)

(declare-fun e!258622 () Bool)

(assert (=> b!438497 (=> (not res!259042) (not e!258622))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438497 (= res!259042 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18933 () Bool)

(declare-fun mapRes!18933 () Bool)

(declare-fun tp!36696 () Bool)

(declare-fun e!258625 () Bool)

(assert (=> mapNonEmpty!18933 (= mapRes!18933 (and tp!36696 e!258625))))

(declare-datatypes ((V!16493 0))(
  ( (V!16494 (val!5815 Int)) )
))
(declare-datatypes ((ValueCell!5427 0))(
  ( (ValueCellFull!5427 (v!8058 V!16493)) (EmptyCell!5427) )
))
(declare-fun mapValue!18933 () ValueCell!5427)

(declare-fun mapKey!18933 () (_ BitVec 32))

(declare-datatypes ((array!26875 0))(
  ( (array!26876 (arr!12884 (Array (_ BitVec 32) ValueCell!5427)) (size!13236 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26875)

(declare-fun mapRest!18933 () (Array (_ BitVec 32) ValueCell!5427))

(assert (=> mapNonEmpty!18933 (= (arr!12884 _values!549) (store mapRest!18933 mapKey!18933 mapValue!18933))))

(declare-fun b!438498 () Bool)

(declare-fun e!258620 () Bool)

(declare-fun e!258623 () Bool)

(assert (=> b!438498 (= e!258620 (and e!258623 mapRes!18933))))

(declare-fun condMapEmpty!18933 () Bool)

(declare-fun mapDefault!18933 () ValueCell!5427)

(assert (=> b!438498 (= condMapEmpty!18933 (= (arr!12884 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5427)) mapDefault!18933)))))

(declare-fun b!438499 () Bool)

(declare-fun res!259033 () Bool)

(declare-fun e!258624 () Bool)

(assert (=> b!438499 (=> (not res!259033) (not e!258624))))

(declare-datatypes ((array!26877 0))(
  ( (array!26878 (arr!12885 (Array (_ BitVec 32) (_ BitVec 64))) (size!13237 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26877)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438499 (= res!259033 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!438500 () Bool)

(declare-fun e!258621 () Bool)

(assert (=> b!438500 (= e!258622 e!258621)))

(declare-fun res!259040 () Bool)

(assert (=> b!438500 (=> (not res!259040) (not e!258621))))

(assert (=> b!438500 (= res!259040 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16493)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16493)

(declare-datatypes ((tuple2!7644 0))(
  ( (tuple2!7645 (_1!3832 (_ BitVec 64)) (_2!3832 V!16493)) )
))
(declare-datatypes ((List!7686 0))(
  ( (Nil!7683) (Cons!7682 (h!8538 tuple2!7644) (t!13450 List!7686)) )
))
(declare-datatypes ((ListLongMap!6571 0))(
  ( (ListLongMap!6572 (toList!3301 List!7686)) )
))
(declare-fun lt!202000 () ListLongMap!6571)

(declare-fun lt!201999 () array!26875)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!202001 () array!26877)

(declare-fun getCurrentListMapNoExtraKeys!1483 (array!26877 array!26875 (_ BitVec 32) (_ BitVec 32) V!16493 V!16493 (_ BitVec 32) Int) ListLongMap!6571)

(assert (=> b!438500 (= lt!202000 (getCurrentListMapNoExtraKeys!1483 lt!202001 lt!201999 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16493)

(assert (=> b!438500 (= lt!201999 (array!26876 (store (arr!12884 _values!549) i!563 (ValueCellFull!5427 v!412)) (size!13236 _values!549)))))

(declare-fun lt!201998 () ListLongMap!6571)

(assert (=> b!438500 (= lt!201998 (getCurrentListMapNoExtraKeys!1483 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438501 () Bool)

(declare-fun res!259035 () Bool)

(assert (=> b!438501 (=> (not res!259035) (not e!258622))))

(declare-datatypes ((List!7687 0))(
  ( (Nil!7684) (Cons!7683 (h!8539 (_ BitVec 64)) (t!13451 List!7687)) )
))
(declare-fun arrayNoDuplicates!0 (array!26877 (_ BitVec 32) List!7687) Bool)

(assert (=> b!438501 (= res!259035 (arrayNoDuplicates!0 lt!202001 #b00000000000000000000000000000000 Nil!7684))))

(declare-fun b!438502 () Bool)

(assert (=> b!438502 (= e!258621 (not true))))

(declare-fun +!1441 (ListLongMap!6571 tuple2!7644) ListLongMap!6571)

(assert (=> b!438502 (= (getCurrentListMapNoExtraKeys!1483 lt!202001 lt!201999 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1441 (getCurrentListMapNoExtraKeys!1483 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7645 k0!794 v!412)))))

(declare-datatypes ((Unit!12997 0))(
  ( (Unit!12998) )
))
(declare-fun lt!202002 () Unit!12997)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!619 (array!26877 array!26875 (_ BitVec 32) (_ BitVec 32) V!16493 V!16493 (_ BitVec 32) (_ BitVec 64) V!16493 (_ BitVec 32) Int) Unit!12997)

(assert (=> b!438502 (= lt!202002 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!619 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438503 () Bool)

(declare-fun res!259039 () Bool)

(assert (=> b!438503 (=> (not res!259039) (not e!258624))))

(assert (=> b!438503 (= res!259039 (or (= (select (arr!12885 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12885 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438504 () Bool)

(declare-fun res!259036 () Bool)

(assert (=> b!438504 (=> (not res!259036) (not e!258624))))

(assert (=> b!438504 (= res!259036 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13237 _keys!709))))))

(declare-fun b!438505 () Bool)

(assert (=> b!438505 (= e!258624 e!258622)))

(declare-fun res!259037 () Bool)

(assert (=> b!438505 (=> (not res!259037) (not e!258622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26877 (_ BitVec 32)) Bool)

(assert (=> b!438505 (= res!259037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202001 mask!1025))))

(assert (=> b!438505 (= lt!202001 (array!26878 (store (arr!12885 _keys!709) i!563 k0!794) (size!13237 _keys!709)))))

(declare-fun mapIsEmpty!18933 () Bool)

(assert (=> mapIsEmpty!18933 mapRes!18933))

(declare-fun b!438506 () Bool)

(declare-fun res!259043 () Bool)

(assert (=> b!438506 (=> (not res!259043) (not e!258624))))

(assert (=> b!438506 (= res!259043 (and (= (size!13236 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13237 _keys!709) (size!13236 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438507 () Bool)

(declare-fun res!259032 () Bool)

(assert (=> b!438507 (=> (not res!259032) (not e!258624))))

(assert (=> b!438507 (= res!259032 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7684))))

(declare-fun b!438508 () Bool)

(declare-fun res!259034 () Bool)

(assert (=> b!438508 (=> (not res!259034) (not e!258624))))

(assert (=> b!438508 (= res!259034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!259041 () Bool)

(assert (=> start!40130 (=> (not res!259041) (not e!258624))))

(assert (=> start!40130 (= res!259041 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13237 _keys!709))))))

(assert (=> start!40130 e!258624))

(declare-fun tp_is_empty!11541 () Bool)

(assert (=> start!40130 tp_is_empty!11541))

(assert (=> start!40130 tp!36695))

(assert (=> start!40130 true))

(declare-fun array_inv!9352 (array!26875) Bool)

(assert (=> start!40130 (and (array_inv!9352 _values!549) e!258620)))

(declare-fun array_inv!9353 (array!26877) Bool)

(assert (=> start!40130 (array_inv!9353 _keys!709)))

(declare-fun b!438509 () Bool)

(declare-fun res!259038 () Bool)

(assert (=> b!438509 (=> (not res!259038) (not e!258624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438509 (= res!259038 (validMask!0 mask!1025))))

(declare-fun b!438510 () Bool)

(assert (=> b!438510 (= e!258623 tp_is_empty!11541)))

(declare-fun b!438511 () Bool)

(assert (=> b!438511 (= e!258625 tp_is_empty!11541)))

(declare-fun b!438512 () Bool)

(declare-fun res!259044 () Bool)

(assert (=> b!438512 (=> (not res!259044) (not e!258624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438512 (= res!259044 (validKeyInArray!0 k0!794))))

(assert (= (and start!40130 res!259041) b!438509))

(assert (= (and b!438509 res!259038) b!438506))

(assert (= (and b!438506 res!259043) b!438508))

(assert (= (and b!438508 res!259034) b!438507))

(assert (= (and b!438507 res!259032) b!438504))

(assert (= (and b!438504 res!259036) b!438512))

(assert (= (and b!438512 res!259044) b!438503))

(assert (= (and b!438503 res!259039) b!438499))

(assert (= (and b!438499 res!259033) b!438505))

(assert (= (and b!438505 res!259037) b!438501))

(assert (= (and b!438501 res!259035) b!438497))

(assert (= (and b!438497 res!259042) b!438500))

(assert (= (and b!438500 res!259040) b!438502))

(assert (= (and b!438498 condMapEmpty!18933) mapIsEmpty!18933))

(assert (= (and b!438498 (not condMapEmpty!18933)) mapNonEmpty!18933))

(get-info :version)

(assert (= (and mapNonEmpty!18933 ((_ is ValueCellFull!5427) mapValue!18933)) b!438511))

(assert (= (and b!438498 ((_ is ValueCellFull!5427) mapDefault!18933)) b!438510))

(assert (= start!40130 b!438498))

(declare-fun m!425943 () Bool)

(assert (=> b!438499 m!425943))

(declare-fun m!425945 () Bool)

(assert (=> b!438503 m!425945))

(declare-fun m!425947 () Bool)

(assert (=> b!438512 m!425947))

(declare-fun m!425949 () Bool)

(assert (=> b!438505 m!425949))

(declare-fun m!425951 () Bool)

(assert (=> b!438505 m!425951))

(declare-fun m!425953 () Bool)

(assert (=> b!438508 m!425953))

(declare-fun m!425955 () Bool)

(assert (=> b!438502 m!425955))

(declare-fun m!425957 () Bool)

(assert (=> b!438502 m!425957))

(assert (=> b!438502 m!425957))

(declare-fun m!425959 () Bool)

(assert (=> b!438502 m!425959))

(declare-fun m!425961 () Bool)

(assert (=> b!438502 m!425961))

(declare-fun m!425963 () Bool)

(assert (=> b!438507 m!425963))

(declare-fun m!425965 () Bool)

(assert (=> mapNonEmpty!18933 m!425965))

(declare-fun m!425967 () Bool)

(assert (=> b!438509 m!425967))

(declare-fun m!425969 () Bool)

(assert (=> b!438501 m!425969))

(declare-fun m!425971 () Bool)

(assert (=> start!40130 m!425971))

(declare-fun m!425973 () Bool)

(assert (=> start!40130 m!425973))

(declare-fun m!425975 () Bool)

(assert (=> b!438500 m!425975))

(declare-fun m!425977 () Bool)

(assert (=> b!438500 m!425977))

(declare-fun m!425979 () Bool)

(assert (=> b!438500 m!425979))

(check-sat (not start!40130) (not b!438509) tp_is_empty!11541 b_and!18375 (not b!438512) (not b!438502) (not b_next!10389) (not b!438507) (not mapNonEmpty!18933) (not b!438500) (not b!438501) (not b!438505) (not b!438508) (not b!438499))
(check-sat b_and!18375 (not b_next!10389))
