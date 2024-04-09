; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40076 () Bool)

(assert start!40076)

(declare-fun b_free!10335 () Bool)

(declare-fun b_next!10335 () Bool)

(assert (=> start!40076 (= b_free!10335 (not b_next!10335))))

(declare-fun tp!36534 () Bool)

(declare-fun b_and!18321 () Bool)

(assert (=> start!40076 (= tp!36534 b_and!18321)))

(declare-fun b!437201 () Bool)

(declare-fun e!258053 () Bool)

(assert (=> b!437201 (= e!258053 (not true))))

(declare-datatypes ((array!26773 0))(
  ( (array!26774 (arr!12833 (Array (_ BitVec 32) (_ BitVec 64))) (size!13185 (_ BitVec 32))) )
))
(declare-fun lt!201595 () array!26773)

(declare-datatypes ((V!16421 0))(
  ( (V!16422 (val!5788 Int)) )
))
(declare-fun minValue!515 () V!16421)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5400 0))(
  ( (ValueCellFull!5400 (v!8031 V!16421)) (EmptyCell!5400) )
))
(declare-datatypes ((array!26775 0))(
  ( (array!26776 (arr!12834 (Array (_ BitVec 32) ValueCell!5400)) (size!13186 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26775)

(declare-fun zeroValue!515 () V!16421)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16421)

(declare-fun _keys!709 () array!26773)

(declare-fun lt!201593 () array!26775)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7604 0))(
  ( (tuple2!7605 (_1!3812 (_ BitVec 64)) (_2!3812 V!16421)) )
))
(declare-datatypes ((List!7647 0))(
  ( (Nil!7644) (Cons!7643 (h!8499 tuple2!7604) (t!13411 List!7647)) )
))
(declare-datatypes ((ListLongMap!6531 0))(
  ( (ListLongMap!6532 (toList!3281 List!7647)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1463 (array!26773 array!26775 (_ BitVec 32) (_ BitVec 32) V!16421 V!16421 (_ BitVec 32) Int) ListLongMap!6531)

(declare-fun +!1425 (ListLongMap!6531 tuple2!7604) ListLongMap!6531)

(assert (=> b!437201 (= (getCurrentListMapNoExtraKeys!1463 lt!201595 lt!201593 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1425 (getCurrentListMapNoExtraKeys!1463 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7605 k0!794 v!412)))))

(declare-datatypes ((Unit!12965 0))(
  ( (Unit!12966) )
))
(declare-fun lt!201594 () Unit!12965)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!603 (array!26773 array!26775 (_ BitVec 32) (_ BitVec 32) V!16421 V!16421 (_ BitVec 32) (_ BitVec 64) V!16421 (_ BitVec 32) Int) Unit!12965)

(assert (=> b!437201 (= lt!201594 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!603 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437202 () Bool)

(declare-fun res!257986 () Bool)

(declare-fun e!258054 () Bool)

(assert (=> b!437202 (=> (not res!257986) (not e!258054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26773 (_ BitVec 32)) Bool)

(assert (=> b!437202 (= res!257986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437203 () Bool)

(declare-fun e!258057 () Bool)

(declare-fun tp_is_empty!11487 () Bool)

(assert (=> b!437203 (= e!258057 tp_is_empty!11487)))

(declare-fun mapNonEmpty!18852 () Bool)

(declare-fun mapRes!18852 () Bool)

(declare-fun tp!36533 () Bool)

(declare-fun e!258058 () Bool)

(assert (=> mapNonEmpty!18852 (= mapRes!18852 (and tp!36533 e!258058))))

(declare-fun mapRest!18852 () (Array (_ BitVec 32) ValueCell!5400))

(declare-fun mapKey!18852 () (_ BitVec 32))

(declare-fun mapValue!18852 () ValueCell!5400)

(assert (=> mapNonEmpty!18852 (= (arr!12834 _values!549) (store mapRest!18852 mapKey!18852 mapValue!18852))))

(declare-fun b!437204 () Bool)

(declare-fun res!257980 () Bool)

(assert (=> b!437204 (=> (not res!257980) (not e!258054))))

(assert (=> b!437204 (= res!257980 (or (= (select (arr!12833 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12833 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437205 () Bool)

(declare-fun e!258052 () Bool)

(assert (=> b!437205 (= e!258054 e!258052)))

(declare-fun res!257985 () Bool)

(assert (=> b!437205 (=> (not res!257985) (not e!258052))))

(assert (=> b!437205 (= res!257985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201595 mask!1025))))

(assert (=> b!437205 (= lt!201595 (array!26774 (store (arr!12833 _keys!709) i!563 k0!794) (size!13185 _keys!709)))))

(declare-fun b!437206 () Bool)

(declare-fun res!257987 () Bool)

(assert (=> b!437206 (=> (not res!257987) (not e!258054))))

(declare-fun arrayContainsKey!0 (array!26773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437206 (= res!257987 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!437207 () Bool)

(assert (=> b!437207 (= e!258058 tp_is_empty!11487)))

(declare-fun b!437208 () Bool)

(declare-fun e!258055 () Bool)

(assert (=> b!437208 (= e!258055 (and e!258057 mapRes!18852))))

(declare-fun condMapEmpty!18852 () Bool)

(declare-fun mapDefault!18852 () ValueCell!5400)

(assert (=> b!437208 (= condMapEmpty!18852 (= (arr!12834 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5400)) mapDefault!18852)))))

(declare-fun b!437209 () Bool)

(declare-fun res!257979 () Bool)

(assert (=> b!437209 (=> (not res!257979) (not e!258054))))

(declare-datatypes ((List!7648 0))(
  ( (Nil!7645) (Cons!7644 (h!8500 (_ BitVec 64)) (t!13412 List!7648)) )
))
(declare-fun arrayNoDuplicates!0 (array!26773 (_ BitVec 32) List!7648) Bool)

(assert (=> b!437209 (= res!257979 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7645))))

(declare-fun b!437210 () Bool)

(declare-fun res!257991 () Bool)

(assert (=> b!437210 (=> (not res!257991) (not e!258052))))

(assert (=> b!437210 (= res!257991 (bvsle from!863 i!563))))

(declare-fun b!437211 () Bool)

(declare-fun res!257983 () Bool)

(assert (=> b!437211 (=> (not res!257983) (not e!258054))))

(assert (=> b!437211 (= res!257983 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13185 _keys!709))))))

(declare-fun b!437212 () Bool)

(declare-fun res!257982 () Bool)

(assert (=> b!437212 (=> (not res!257982) (not e!258054))))

(assert (=> b!437212 (= res!257982 (and (= (size!13186 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13185 _keys!709) (size!13186 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437213 () Bool)

(assert (=> b!437213 (= e!258052 e!258053)))

(declare-fun res!257981 () Bool)

(assert (=> b!437213 (=> (not res!257981) (not e!258053))))

(assert (=> b!437213 (= res!257981 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201597 () ListLongMap!6531)

(assert (=> b!437213 (= lt!201597 (getCurrentListMapNoExtraKeys!1463 lt!201595 lt!201593 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!437213 (= lt!201593 (array!26776 (store (arr!12834 _values!549) i!563 (ValueCellFull!5400 v!412)) (size!13186 _values!549)))))

(declare-fun lt!201596 () ListLongMap!6531)

(assert (=> b!437213 (= lt!201596 (getCurrentListMapNoExtraKeys!1463 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437214 () Bool)

(declare-fun res!257984 () Bool)

(assert (=> b!437214 (=> (not res!257984) (not e!258054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437214 (= res!257984 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18852 () Bool)

(assert (=> mapIsEmpty!18852 mapRes!18852))

(declare-fun res!257988 () Bool)

(assert (=> start!40076 (=> (not res!257988) (not e!258054))))

(assert (=> start!40076 (= res!257988 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13185 _keys!709))))))

(assert (=> start!40076 e!258054))

(assert (=> start!40076 tp_is_empty!11487))

(assert (=> start!40076 tp!36534))

(assert (=> start!40076 true))

(declare-fun array_inv!9320 (array!26775) Bool)

(assert (=> start!40076 (and (array_inv!9320 _values!549) e!258055)))

(declare-fun array_inv!9321 (array!26773) Bool)

(assert (=> start!40076 (array_inv!9321 _keys!709)))

(declare-fun b!437215 () Bool)

(declare-fun res!257990 () Bool)

(assert (=> b!437215 (=> (not res!257990) (not e!258052))))

(assert (=> b!437215 (= res!257990 (arrayNoDuplicates!0 lt!201595 #b00000000000000000000000000000000 Nil!7645))))

(declare-fun b!437216 () Bool)

(declare-fun res!257989 () Bool)

(assert (=> b!437216 (=> (not res!257989) (not e!258054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437216 (= res!257989 (validKeyInArray!0 k0!794))))

(assert (= (and start!40076 res!257988) b!437214))

(assert (= (and b!437214 res!257984) b!437212))

(assert (= (and b!437212 res!257982) b!437202))

(assert (= (and b!437202 res!257986) b!437209))

(assert (= (and b!437209 res!257979) b!437211))

(assert (= (and b!437211 res!257983) b!437216))

(assert (= (and b!437216 res!257989) b!437204))

(assert (= (and b!437204 res!257980) b!437206))

(assert (= (and b!437206 res!257987) b!437205))

(assert (= (and b!437205 res!257985) b!437215))

(assert (= (and b!437215 res!257990) b!437210))

(assert (= (and b!437210 res!257991) b!437213))

(assert (= (and b!437213 res!257981) b!437201))

(assert (= (and b!437208 condMapEmpty!18852) mapIsEmpty!18852))

(assert (= (and b!437208 (not condMapEmpty!18852)) mapNonEmpty!18852))

(get-info :version)

(assert (= (and mapNonEmpty!18852 ((_ is ValueCellFull!5400) mapValue!18852)) b!437207))

(assert (= (and b!437208 ((_ is ValueCellFull!5400) mapDefault!18852)) b!437203))

(assert (= start!40076 b!437208))

(declare-fun m!424917 () Bool)

(assert (=> b!437213 m!424917))

(declare-fun m!424919 () Bool)

(assert (=> b!437213 m!424919))

(declare-fun m!424921 () Bool)

(assert (=> b!437213 m!424921))

(declare-fun m!424923 () Bool)

(assert (=> start!40076 m!424923))

(declare-fun m!424925 () Bool)

(assert (=> start!40076 m!424925))

(declare-fun m!424927 () Bool)

(assert (=> b!437201 m!424927))

(declare-fun m!424929 () Bool)

(assert (=> b!437201 m!424929))

(assert (=> b!437201 m!424929))

(declare-fun m!424931 () Bool)

(assert (=> b!437201 m!424931))

(declare-fun m!424933 () Bool)

(assert (=> b!437201 m!424933))

(declare-fun m!424935 () Bool)

(assert (=> b!437214 m!424935))

(declare-fun m!424937 () Bool)

(assert (=> b!437209 m!424937))

(declare-fun m!424939 () Bool)

(assert (=> b!437215 m!424939))

(declare-fun m!424941 () Bool)

(assert (=> b!437216 m!424941))

(declare-fun m!424943 () Bool)

(assert (=> b!437202 m!424943))

(declare-fun m!424945 () Bool)

(assert (=> b!437204 m!424945))

(declare-fun m!424947 () Bool)

(assert (=> b!437205 m!424947))

(declare-fun m!424949 () Bool)

(assert (=> b!437205 m!424949))

(declare-fun m!424951 () Bool)

(assert (=> mapNonEmpty!18852 m!424951))

(declare-fun m!424953 () Bool)

(assert (=> b!437206 m!424953))

(check-sat (not b!437209) (not b!437215) (not b!437214) (not b!437201) b_and!18321 (not b!437216) (not b_next!10335) (not mapNonEmpty!18852) tp_is_empty!11487 (not b!437213) (not b!437206) (not start!40076) (not b!437202) (not b!437205))
(check-sat b_and!18321 (not b_next!10335))
