; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39962 () Bool)

(assert start!39962)

(declare-fun b_free!10221 () Bool)

(declare-fun b_next!10221 () Bool)

(assert (=> start!39962 (= b_free!10221 (not b_next!10221))))

(declare-fun tp!36191 () Bool)

(declare-fun b_and!18119 () Bool)

(assert (=> start!39962 (= tp!36191 b_and!18119)))

(declare-fun mapIsEmpty!18681 () Bool)

(declare-fun mapRes!18681 () Bool)

(assert (=> mapIsEmpty!18681 mapRes!18681))

(declare-fun b!433857 () Bool)

(declare-fun res!255504 () Bool)

(declare-fun e!256471 () Bool)

(assert (=> b!433857 (=> (not res!255504) (not e!256471))))

(declare-datatypes ((array!26553 0))(
  ( (array!26554 (arr!12723 (Array (_ BitVec 32) (_ BitVec 64))) (size!13075 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26553)

(declare-datatypes ((List!7559 0))(
  ( (Nil!7556) (Cons!7555 (h!8411 (_ BitVec 64)) (t!13237 List!7559)) )
))
(declare-fun arrayNoDuplicates!0 (array!26553 (_ BitVec 32) List!7559) Bool)

(assert (=> b!433857 (= res!255504 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7556))))

(declare-fun b!433858 () Bool)

(declare-fun e!256474 () Bool)

(assert (=> b!433858 (= e!256474 true)))

(declare-datatypes ((V!16269 0))(
  ( (V!16270 (val!5731 Int)) )
))
(declare-datatypes ((tuple2!7510 0))(
  ( (tuple2!7511 (_1!3765 (_ BitVec 64)) (_2!3765 V!16269)) )
))
(declare-datatypes ((List!7560 0))(
  ( (Nil!7557) (Cons!7556 (h!8412 tuple2!7510) (t!13238 List!7560)) )
))
(declare-datatypes ((ListLongMap!6437 0))(
  ( (ListLongMap!6438 (toList!3234 List!7560)) )
))
(declare-fun lt!199448 () ListLongMap!6437)

(declare-fun lt!199451 () tuple2!7510)

(declare-fun lt!199444 () ListLongMap!6437)

(declare-fun lt!199450 () tuple2!7510)

(declare-fun +!1380 (ListLongMap!6437 tuple2!7510) ListLongMap!6437)

(assert (=> b!433858 (= lt!199444 (+!1380 (+!1380 lt!199448 lt!199451) lt!199450))))

(declare-fun lt!199443 () V!16269)

(declare-datatypes ((Unit!12812 0))(
  ( (Unit!12813) )
))
(declare-fun lt!199439 () Unit!12812)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16269)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!389 (ListLongMap!6437 (_ BitVec 64) V!16269 (_ BitVec 64) V!16269) Unit!12812)

(assert (=> b!433858 (= lt!199439 (addCommutativeForDiffKeys!389 lt!199448 k0!794 v!412 (select (arr!12723 _keys!709) from!863) lt!199443))))

(declare-fun b!433859 () Bool)

(declare-fun res!255505 () Bool)

(assert (=> b!433859 (=> (not res!255505) (not e!256471))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433859 (= res!255505 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13075 _keys!709))))))

(declare-fun b!433860 () Bool)

(declare-fun res!255499 () Bool)

(assert (=> b!433860 (=> (not res!255499) (not e!256471))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26553 (_ BitVec 32)) Bool)

(assert (=> b!433860 (= res!255499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433861 () Bool)

(declare-fun res!255502 () Bool)

(assert (=> b!433861 (=> (not res!255502) (not e!256471))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5343 0))(
  ( (ValueCellFull!5343 (v!7974 V!16269)) (EmptyCell!5343) )
))
(declare-datatypes ((array!26555 0))(
  ( (array!26556 (arr!12724 (Array (_ BitVec 32) ValueCell!5343)) (size!13076 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26555)

(assert (=> b!433861 (= res!255502 (and (= (size!13076 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13075 _keys!709) (size!13076 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433862 () Bool)

(declare-fun res!255500 () Bool)

(assert (=> b!433862 (=> (not res!255500) (not e!256471))))

(assert (=> b!433862 (= res!255500 (or (= (select (arr!12723 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12723 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433863 () Bool)

(declare-fun res!255507 () Bool)

(declare-fun e!256465 () Bool)

(assert (=> b!433863 (=> (not res!255507) (not e!256465))))

(assert (=> b!433863 (= res!255507 (bvsle from!863 i!563))))

(declare-fun b!433864 () Bool)

(declare-fun res!255498 () Bool)

(assert (=> b!433864 (=> (not res!255498) (not e!256471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433864 (= res!255498 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!18681 () Bool)

(declare-fun tp!36192 () Bool)

(declare-fun e!256467 () Bool)

(assert (=> mapNonEmpty!18681 (= mapRes!18681 (and tp!36192 e!256467))))

(declare-fun mapKey!18681 () (_ BitVec 32))

(declare-fun mapValue!18681 () ValueCell!5343)

(declare-fun mapRest!18681 () (Array (_ BitVec 32) ValueCell!5343))

(assert (=> mapNonEmpty!18681 (= (arr!12724 _values!549) (store mapRest!18681 mapKey!18681 mapValue!18681))))

(declare-fun b!433865 () Bool)

(declare-fun e!256469 () Bool)

(declare-fun e!256472 () Bool)

(assert (=> b!433865 (= e!256469 (not e!256472))))

(declare-fun res!255497 () Bool)

(assert (=> b!433865 (=> res!255497 e!256472)))

(assert (=> b!433865 (= res!255497 (not (validKeyInArray!0 (select (arr!12723 _keys!709) from!863))))))

(declare-fun lt!199452 () ListLongMap!6437)

(declare-fun lt!199449 () ListLongMap!6437)

(assert (=> b!433865 (= lt!199452 lt!199449)))

(assert (=> b!433865 (= lt!199449 (+!1380 lt!199448 lt!199450))))

(declare-fun lt!199446 () array!26555)

(declare-fun minValue!515 () V!16269)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16269)

(declare-fun lt!199447 () array!26553)

(declare-fun getCurrentListMapNoExtraKeys!1423 (array!26553 array!26555 (_ BitVec 32) (_ BitVec 32) V!16269 V!16269 (_ BitVec 32) Int) ListLongMap!6437)

(assert (=> b!433865 (= lt!199452 (getCurrentListMapNoExtraKeys!1423 lt!199447 lt!199446 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433865 (= lt!199450 (tuple2!7511 k0!794 v!412))))

(assert (=> b!433865 (= lt!199448 (getCurrentListMapNoExtraKeys!1423 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199440 () Unit!12812)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!567 (array!26553 array!26555 (_ BitVec 32) (_ BitVec 32) V!16269 V!16269 (_ BitVec 32) (_ BitVec 64) V!16269 (_ BitVec 32) Int) Unit!12812)

(assert (=> b!433865 (= lt!199440 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!567 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!255506 () Bool)

(assert (=> start!39962 (=> (not res!255506) (not e!256471))))

(assert (=> start!39962 (= res!255506 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13075 _keys!709))))))

(assert (=> start!39962 e!256471))

(declare-fun tp_is_empty!11373 () Bool)

(assert (=> start!39962 tp_is_empty!11373))

(assert (=> start!39962 tp!36191))

(assert (=> start!39962 true))

(declare-fun e!256468 () Bool)

(declare-fun array_inv!9250 (array!26555) Bool)

(assert (=> start!39962 (and (array_inv!9250 _values!549) e!256468)))

(declare-fun array_inv!9251 (array!26553) Bool)

(assert (=> start!39962 (array_inv!9251 _keys!709)))

(declare-fun b!433866 () Bool)

(declare-fun e!256473 () Bool)

(assert (=> b!433866 (= e!256473 tp_is_empty!11373)))

(declare-fun b!433867 () Bool)

(declare-fun res!255501 () Bool)

(assert (=> b!433867 (=> (not res!255501) (not e!256471))))

(declare-fun arrayContainsKey!0 (array!26553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433867 (= res!255501 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!433868 () Bool)

(declare-fun res!255509 () Bool)

(assert (=> b!433868 (=> (not res!255509) (not e!256465))))

(assert (=> b!433868 (= res!255509 (arrayNoDuplicates!0 lt!199447 #b00000000000000000000000000000000 Nil!7556))))

(declare-fun b!433869 () Bool)

(assert (=> b!433869 (= e!256472 e!256474)))

(declare-fun res!255510 () Bool)

(assert (=> b!433869 (=> res!255510 e!256474)))

(assert (=> b!433869 (= res!255510 (= k0!794 (select (arr!12723 _keys!709) from!863)))))

(assert (=> b!433869 (not (= (select (arr!12723 _keys!709) from!863) k0!794))))

(declare-fun lt!199441 () Unit!12812)

(declare-fun e!256466 () Unit!12812)

(assert (=> b!433869 (= lt!199441 e!256466)))

(declare-fun c!55592 () Bool)

(assert (=> b!433869 (= c!55592 (= (select (arr!12723 _keys!709) from!863) k0!794))))

(declare-fun lt!199442 () ListLongMap!6437)

(assert (=> b!433869 (= lt!199442 lt!199444)))

(assert (=> b!433869 (= lt!199444 (+!1380 lt!199449 lt!199451))))

(assert (=> b!433869 (= lt!199451 (tuple2!7511 (select (arr!12723 _keys!709) from!863) lt!199443))))

(declare-fun get!6339 (ValueCell!5343 V!16269) V!16269)

(declare-fun dynLambda!812 (Int (_ BitVec 64)) V!16269)

(assert (=> b!433869 (= lt!199443 (get!6339 (select (arr!12724 _values!549) from!863) (dynLambda!812 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433870 () Bool)

(assert (=> b!433870 (= e!256471 e!256465)))

(declare-fun res!255503 () Bool)

(assert (=> b!433870 (=> (not res!255503) (not e!256465))))

(assert (=> b!433870 (= res!255503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199447 mask!1025))))

(assert (=> b!433870 (= lt!199447 (array!26554 (store (arr!12723 _keys!709) i!563 k0!794) (size!13075 _keys!709)))))

(declare-fun b!433871 () Bool)

(declare-fun Unit!12814 () Unit!12812)

(assert (=> b!433871 (= e!256466 Unit!12814)))

(declare-fun b!433872 () Bool)

(declare-fun res!255508 () Bool)

(assert (=> b!433872 (=> (not res!255508) (not e!256471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433872 (= res!255508 (validMask!0 mask!1025))))

(declare-fun b!433873 () Bool)

(assert (=> b!433873 (= e!256467 tp_is_empty!11373)))

(declare-fun b!433874 () Bool)

(assert (=> b!433874 (= e!256468 (and e!256473 mapRes!18681))))

(declare-fun condMapEmpty!18681 () Bool)

(declare-fun mapDefault!18681 () ValueCell!5343)

(assert (=> b!433874 (= condMapEmpty!18681 (= (arr!12724 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5343)) mapDefault!18681)))))

(declare-fun b!433875 () Bool)

(assert (=> b!433875 (= e!256465 e!256469)))

(declare-fun res!255496 () Bool)

(assert (=> b!433875 (=> (not res!255496) (not e!256469))))

(assert (=> b!433875 (= res!255496 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!433875 (= lt!199442 (getCurrentListMapNoExtraKeys!1423 lt!199447 lt!199446 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433875 (= lt!199446 (array!26556 (store (arr!12724 _values!549) i!563 (ValueCellFull!5343 v!412)) (size!13076 _values!549)))))

(declare-fun lt!199438 () ListLongMap!6437)

(assert (=> b!433875 (= lt!199438 (getCurrentListMapNoExtraKeys!1423 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433876 () Bool)

(declare-fun Unit!12815 () Unit!12812)

(assert (=> b!433876 (= e!256466 Unit!12815)))

(declare-fun lt!199445 () Unit!12812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12812)

(assert (=> b!433876 (= lt!199445 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433876 false))

(assert (= (and start!39962 res!255506) b!433872))

(assert (= (and b!433872 res!255508) b!433861))

(assert (= (and b!433861 res!255502) b!433860))

(assert (= (and b!433860 res!255499) b!433857))

(assert (= (and b!433857 res!255504) b!433859))

(assert (= (and b!433859 res!255505) b!433864))

(assert (= (and b!433864 res!255498) b!433862))

(assert (= (and b!433862 res!255500) b!433867))

(assert (= (and b!433867 res!255501) b!433870))

(assert (= (and b!433870 res!255503) b!433868))

(assert (= (and b!433868 res!255509) b!433863))

(assert (= (and b!433863 res!255507) b!433875))

(assert (= (and b!433875 res!255496) b!433865))

(assert (= (and b!433865 (not res!255497)) b!433869))

(assert (= (and b!433869 c!55592) b!433876))

(assert (= (and b!433869 (not c!55592)) b!433871))

(assert (= (and b!433869 (not res!255510)) b!433858))

(assert (= (and b!433874 condMapEmpty!18681) mapIsEmpty!18681))

(assert (= (and b!433874 (not condMapEmpty!18681)) mapNonEmpty!18681))

(get-info :version)

(assert (= (and mapNonEmpty!18681 ((_ is ValueCellFull!5343) mapValue!18681)) b!433873))

(assert (= (and b!433874 ((_ is ValueCellFull!5343) mapDefault!18681)) b!433866))

(assert (= start!39962 b!433874))

(declare-fun b_lambda!9339 () Bool)

(assert (=> (not b_lambda!9339) (not b!433869)))

(declare-fun t!13236 () Bool)

(declare-fun tb!3635 () Bool)

(assert (=> (and start!39962 (= defaultEntry!557 defaultEntry!557) t!13236) tb!3635))

(declare-fun result!6789 () Bool)

(assert (=> tb!3635 (= result!6789 tp_is_empty!11373)))

(assert (=> b!433869 t!13236))

(declare-fun b_and!18121 () Bool)

(assert (= b_and!18119 (and (=> t!13236 result!6789) b_and!18121)))

(declare-fun m!421871 () Bool)

(assert (=> mapNonEmpty!18681 m!421871))

(declare-fun m!421873 () Bool)

(assert (=> b!433862 m!421873))

(declare-fun m!421875 () Bool)

(assert (=> b!433875 m!421875))

(declare-fun m!421877 () Bool)

(assert (=> b!433875 m!421877))

(declare-fun m!421879 () Bool)

(assert (=> b!433875 m!421879))

(declare-fun m!421881 () Bool)

(assert (=> b!433876 m!421881))

(declare-fun m!421883 () Bool)

(assert (=> b!433867 m!421883))

(declare-fun m!421885 () Bool)

(assert (=> b!433870 m!421885))

(declare-fun m!421887 () Bool)

(assert (=> b!433870 m!421887))

(declare-fun m!421889 () Bool)

(assert (=> b!433858 m!421889))

(assert (=> b!433858 m!421889))

(declare-fun m!421891 () Bool)

(assert (=> b!433858 m!421891))

(declare-fun m!421893 () Bool)

(assert (=> b!433858 m!421893))

(assert (=> b!433858 m!421893))

(declare-fun m!421895 () Bool)

(assert (=> b!433858 m!421895))

(declare-fun m!421897 () Bool)

(assert (=> b!433857 m!421897))

(declare-fun m!421899 () Bool)

(assert (=> start!39962 m!421899))

(declare-fun m!421901 () Bool)

(assert (=> start!39962 m!421901))

(declare-fun m!421903 () Bool)

(assert (=> b!433864 m!421903))

(declare-fun m!421905 () Bool)

(assert (=> b!433868 m!421905))

(assert (=> b!433869 m!421893))

(declare-fun m!421907 () Bool)

(assert (=> b!433869 m!421907))

(declare-fun m!421909 () Bool)

(assert (=> b!433869 m!421909))

(assert (=> b!433869 m!421909))

(assert (=> b!433869 m!421907))

(declare-fun m!421911 () Bool)

(assert (=> b!433869 m!421911))

(declare-fun m!421913 () Bool)

(assert (=> b!433869 m!421913))

(assert (=> b!433865 m!421893))

(declare-fun m!421915 () Bool)

(assert (=> b!433865 m!421915))

(declare-fun m!421917 () Bool)

(assert (=> b!433865 m!421917))

(declare-fun m!421919 () Bool)

(assert (=> b!433865 m!421919))

(assert (=> b!433865 m!421893))

(declare-fun m!421921 () Bool)

(assert (=> b!433865 m!421921))

(declare-fun m!421923 () Bool)

(assert (=> b!433865 m!421923))

(declare-fun m!421925 () Bool)

(assert (=> b!433860 m!421925))

(declare-fun m!421927 () Bool)

(assert (=> b!433872 m!421927))

(check-sat (not b!433875) (not b!433870) (not b!433860) (not b_lambda!9339) (not b!433864) (not b!433857) (not b!433876) (not mapNonEmpty!18681) tp_is_empty!11373 (not start!39962) (not b!433858) (not b!433872) b_and!18121 (not b!433867) (not b_next!10221) (not b!433868) (not b!433869) (not b!433865))
(check-sat b_and!18121 (not b_next!10221))
