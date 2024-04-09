; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39896 () Bool)

(assert start!39896)

(declare-fun b_free!10155 () Bool)

(declare-fun b_next!10155 () Bool)

(assert (=> start!39896 (= b_free!10155 (not b_next!10155))))

(declare-fun tp!35993 () Bool)

(declare-fun b_and!17987 () Bool)

(assert (=> start!39896 (= tp!35993 b_and!17987)))

(declare-fun b!431811 () Bool)

(declare-fun e!255479 () Bool)

(declare-fun tp_is_empty!11307 () Bool)

(assert (=> b!431811 (= e!255479 tp_is_empty!11307)))

(declare-fun b!431812 () Bool)

(declare-fun e!255483 () Bool)

(assert (=> b!431812 (= e!255483 true)))

(declare-datatypes ((V!16181 0))(
  ( (V!16182 (val!5698 Int)) )
))
(declare-datatypes ((tuple2!7452 0))(
  ( (tuple2!7453 (_1!3736 (_ BitVec 64)) (_2!3736 V!16181)) )
))
(declare-fun lt!197959 () tuple2!7452)

(declare-datatypes ((List!7505 0))(
  ( (Nil!7502) (Cons!7501 (h!8357 tuple2!7452) (t!13117 List!7505)) )
))
(declare-datatypes ((ListLongMap!6379 0))(
  ( (ListLongMap!6380 (toList!3205 List!7505)) )
))
(declare-fun lt!197957 () ListLongMap!6379)

(declare-fun lt!197967 () tuple2!7452)

(declare-fun lt!197960 () ListLongMap!6379)

(declare-fun +!1351 (ListLongMap!6379 tuple2!7452) ListLongMap!6379)

(assert (=> b!431812 (= lt!197957 (+!1351 (+!1351 lt!197960 lt!197967) lt!197959))))

(declare-datatypes ((Unit!12706 0))(
  ( (Unit!12707) )
))
(declare-fun lt!197953 () Unit!12706)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!197956 () V!16181)

(declare-fun v!412 () V!16181)

(declare-datatypes ((array!26427 0))(
  ( (array!26428 (arr!12660 (Array (_ BitVec 32) (_ BitVec 64))) (size!13012 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26427)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!364 (ListLongMap!6379 (_ BitVec 64) V!16181 (_ BitVec 64) V!16181) Unit!12706)

(assert (=> b!431812 (= lt!197953 (addCommutativeForDiffKeys!364 lt!197960 k0!794 v!412 (select (arr!12660 _keys!709) from!863) lt!197956))))

(declare-fun b!431813 () Bool)

(declare-fun res!254015 () Bool)

(declare-fun e!255475 () Bool)

(assert (=> b!431813 (=> (not res!254015) (not e!255475))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26427 (_ BitVec 32)) Bool)

(assert (=> b!431813 (= res!254015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431814 () Bool)

(declare-fun e!255478 () Bool)

(assert (=> b!431814 (= e!255475 e!255478)))

(declare-fun res!254022 () Bool)

(assert (=> b!431814 (=> (not res!254022) (not e!255478))))

(declare-fun lt!197964 () array!26427)

(assert (=> b!431814 (= res!254022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197964 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431814 (= lt!197964 (array!26428 (store (arr!12660 _keys!709) i!563 k0!794) (size!13012 _keys!709)))))

(declare-fun b!431815 () Bool)

(declare-fun e!255476 () Bool)

(assert (=> b!431815 (= e!255476 e!255483)))

(declare-fun res!254012 () Bool)

(assert (=> b!431815 (=> res!254012 e!255483)))

(assert (=> b!431815 (= res!254012 (= k0!794 (select (arr!12660 _keys!709) from!863)))))

(assert (=> b!431815 (not (= (select (arr!12660 _keys!709) from!863) k0!794))))

(declare-fun lt!197955 () Unit!12706)

(declare-fun e!255477 () Unit!12706)

(assert (=> b!431815 (= lt!197955 e!255477)))

(declare-fun c!55493 () Bool)

(assert (=> b!431815 (= c!55493 (= (select (arr!12660 _keys!709) from!863) k0!794))))

(declare-fun lt!197961 () ListLongMap!6379)

(assert (=> b!431815 (= lt!197961 lt!197957)))

(declare-fun lt!197958 () ListLongMap!6379)

(assert (=> b!431815 (= lt!197957 (+!1351 lt!197958 lt!197967))))

(assert (=> b!431815 (= lt!197967 (tuple2!7453 (select (arr!12660 _keys!709) from!863) lt!197956))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5310 0))(
  ( (ValueCellFull!5310 (v!7941 V!16181)) (EmptyCell!5310) )
))
(declare-datatypes ((array!26429 0))(
  ( (array!26430 (arr!12661 (Array (_ BitVec 32) ValueCell!5310)) (size!13013 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26429)

(declare-fun get!6296 (ValueCell!5310 V!16181) V!16181)

(declare-fun dynLambda!791 (Int (_ BitVec 64)) V!16181)

(assert (=> b!431815 (= lt!197956 (get!6296 (select (arr!12661 _values!549) from!863) (dynLambda!791 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431816 () Bool)

(declare-fun e!255481 () Bool)

(assert (=> b!431816 (= e!255481 (not e!255476))))

(declare-fun res!254021 () Bool)

(assert (=> b!431816 (=> res!254021 e!255476)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431816 (= res!254021 (not (validKeyInArray!0 (select (arr!12660 _keys!709) from!863))))))

(declare-fun lt!197963 () ListLongMap!6379)

(assert (=> b!431816 (= lt!197963 lt!197958)))

(assert (=> b!431816 (= lt!197958 (+!1351 lt!197960 lt!197959))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16181)

(declare-fun lt!197954 () array!26429)

(declare-fun minValue!515 () V!16181)

(declare-fun getCurrentListMapNoExtraKeys!1399 (array!26427 array!26429 (_ BitVec 32) (_ BitVec 32) V!16181 V!16181 (_ BitVec 32) Int) ListLongMap!6379)

(assert (=> b!431816 (= lt!197963 (getCurrentListMapNoExtraKeys!1399 lt!197964 lt!197954 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!431816 (= lt!197959 (tuple2!7453 k0!794 v!412))))

(assert (=> b!431816 (= lt!197960 (getCurrentListMapNoExtraKeys!1399 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197965 () Unit!12706)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!543 (array!26427 array!26429 (_ BitVec 32) (_ BitVec 32) V!16181 V!16181 (_ BitVec 32) (_ BitVec 64) V!16181 (_ BitVec 32) Int) Unit!12706)

(assert (=> b!431816 (= lt!197965 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!543 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431817 () Bool)

(declare-fun Unit!12708 () Unit!12706)

(assert (=> b!431817 (= e!255477 Unit!12708)))

(declare-fun b!431818 () Bool)

(declare-fun res!254011 () Bool)

(assert (=> b!431818 (=> (not res!254011) (not e!255475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431818 (= res!254011 (validMask!0 mask!1025))))

(declare-fun b!431819 () Bool)

(declare-fun res!254014 () Bool)

(assert (=> b!431819 (=> (not res!254014) (not e!255475))))

(assert (=> b!431819 (= res!254014 (validKeyInArray!0 k0!794))))

(declare-fun b!431820 () Bool)

(declare-fun res!254025 () Bool)

(assert (=> b!431820 (=> (not res!254025) (not e!255475))))

(assert (=> b!431820 (= res!254025 (and (= (size!13013 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13012 _keys!709) (size!13013 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!18582 () Bool)

(declare-fun mapRes!18582 () Bool)

(declare-fun tp!35994 () Bool)

(assert (=> mapNonEmpty!18582 (= mapRes!18582 (and tp!35994 e!255479))))

(declare-fun mapValue!18582 () ValueCell!5310)

(declare-fun mapKey!18582 () (_ BitVec 32))

(declare-fun mapRest!18582 () (Array (_ BitVec 32) ValueCell!5310))

(assert (=> mapNonEmpty!18582 (= (arr!12661 _values!549) (store mapRest!18582 mapKey!18582 mapValue!18582))))

(declare-fun res!254023 () Bool)

(assert (=> start!39896 (=> (not res!254023) (not e!255475))))

(assert (=> start!39896 (= res!254023 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13012 _keys!709))))))

(assert (=> start!39896 e!255475))

(assert (=> start!39896 tp_is_empty!11307))

(assert (=> start!39896 tp!35993))

(assert (=> start!39896 true))

(declare-fun e!255482 () Bool)

(declare-fun array_inv!9206 (array!26429) Bool)

(assert (=> start!39896 (and (array_inv!9206 _values!549) e!255482)))

(declare-fun array_inv!9207 (array!26427) Bool)

(assert (=> start!39896 (array_inv!9207 _keys!709)))

(declare-fun mapIsEmpty!18582 () Bool)

(assert (=> mapIsEmpty!18582 mapRes!18582))

(declare-fun b!431821 () Bool)

(declare-fun res!254018 () Bool)

(assert (=> b!431821 (=> (not res!254018) (not e!255475))))

(assert (=> b!431821 (= res!254018 (or (= (select (arr!12660 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12660 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431822 () Bool)

(declare-fun res!254019 () Bool)

(assert (=> b!431822 (=> (not res!254019) (not e!255478))))

(assert (=> b!431822 (= res!254019 (bvsle from!863 i!563))))

(declare-fun b!431823 () Bool)

(declare-fun res!254013 () Bool)

(assert (=> b!431823 (=> (not res!254013) (not e!255475))))

(declare-fun arrayContainsKey!0 (array!26427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431823 (= res!254013 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!431824 () Bool)

(declare-fun res!254024 () Bool)

(assert (=> b!431824 (=> (not res!254024) (not e!255475))))

(declare-datatypes ((List!7506 0))(
  ( (Nil!7503) (Cons!7502 (h!8358 (_ BitVec 64)) (t!13118 List!7506)) )
))
(declare-fun arrayNoDuplicates!0 (array!26427 (_ BitVec 32) List!7506) Bool)

(assert (=> b!431824 (= res!254024 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7503))))

(declare-fun b!431825 () Bool)

(assert (=> b!431825 (= e!255478 e!255481)))

(declare-fun res!254017 () Bool)

(assert (=> b!431825 (=> (not res!254017) (not e!255481))))

(assert (=> b!431825 (= res!254017 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!431825 (= lt!197961 (getCurrentListMapNoExtraKeys!1399 lt!197964 lt!197954 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!431825 (= lt!197954 (array!26430 (store (arr!12661 _values!549) i!563 (ValueCellFull!5310 v!412)) (size!13013 _values!549)))))

(declare-fun lt!197962 () ListLongMap!6379)

(assert (=> b!431825 (= lt!197962 (getCurrentListMapNoExtraKeys!1399 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431826 () Bool)

(declare-fun Unit!12709 () Unit!12706)

(assert (=> b!431826 (= e!255477 Unit!12709)))

(declare-fun lt!197966 () Unit!12706)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26427 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12706)

(assert (=> b!431826 (= lt!197966 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431826 false))

(declare-fun b!431827 () Bool)

(declare-fun res!254020 () Bool)

(assert (=> b!431827 (=> (not res!254020) (not e!255478))))

(assert (=> b!431827 (= res!254020 (arrayNoDuplicates!0 lt!197964 #b00000000000000000000000000000000 Nil!7503))))

(declare-fun b!431828 () Bool)

(declare-fun e!255484 () Bool)

(assert (=> b!431828 (= e!255482 (and e!255484 mapRes!18582))))

(declare-fun condMapEmpty!18582 () Bool)

(declare-fun mapDefault!18582 () ValueCell!5310)

(assert (=> b!431828 (= condMapEmpty!18582 (= (arr!12661 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5310)) mapDefault!18582)))))

(declare-fun b!431829 () Bool)

(declare-fun res!254016 () Bool)

(assert (=> b!431829 (=> (not res!254016) (not e!255475))))

(assert (=> b!431829 (= res!254016 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13012 _keys!709))))))

(declare-fun b!431830 () Bool)

(assert (=> b!431830 (= e!255484 tp_is_empty!11307)))

(assert (= (and start!39896 res!254023) b!431818))

(assert (= (and b!431818 res!254011) b!431820))

(assert (= (and b!431820 res!254025) b!431813))

(assert (= (and b!431813 res!254015) b!431824))

(assert (= (and b!431824 res!254024) b!431829))

(assert (= (and b!431829 res!254016) b!431819))

(assert (= (and b!431819 res!254014) b!431821))

(assert (= (and b!431821 res!254018) b!431823))

(assert (= (and b!431823 res!254013) b!431814))

(assert (= (and b!431814 res!254022) b!431827))

(assert (= (and b!431827 res!254020) b!431822))

(assert (= (and b!431822 res!254019) b!431825))

(assert (= (and b!431825 res!254017) b!431816))

(assert (= (and b!431816 (not res!254021)) b!431815))

(assert (= (and b!431815 c!55493) b!431826))

(assert (= (and b!431815 (not c!55493)) b!431817))

(assert (= (and b!431815 (not res!254012)) b!431812))

(assert (= (and b!431828 condMapEmpty!18582) mapIsEmpty!18582))

(assert (= (and b!431828 (not condMapEmpty!18582)) mapNonEmpty!18582))

(get-info :version)

(assert (= (and mapNonEmpty!18582 ((_ is ValueCellFull!5310) mapValue!18582)) b!431811))

(assert (= (and b!431828 ((_ is ValueCellFull!5310) mapDefault!18582)) b!431830))

(assert (= start!39896 b!431828))

(declare-fun b_lambda!9273 () Bool)

(assert (=> (not b_lambda!9273) (not b!431815)))

(declare-fun t!13116 () Bool)

(declare-fun tb!3569 () Bool)

(assert (=> (and start!39896 (= defaultEntry!557 defaultEntry!557) t!13116) tb!3569))

(declare-fun result!6657 () Bool)

(assert (=> tb!3569 (= result!6657 tp_is_empty!11307)))

(assert (=> b!431815 t!13116))

(declare-fun b_and!17989 () Bool)

(assert (= b_and!17987 (and (=> t!13116 result!6657) b_and!17989)))

(declare-fun m!419957 () Bool)

(assert (=> b!431827 m!419957))

(declare-fun m!419959 () Bool)

(assert (=> b!431814 m!419959))

(declare-fun m!419961 () Bool)

(assert (=> b!431814 m!419961))

(declare-fun m!419963 () Bool)

(assert (=> b!431815 m!419963))

(declare-fun m!419965 () Bool)

(assert (=> b!431815 m!419965))

(declare-fun m!419967 () Bool)

(assert (=> b!431815 m!419967))

(declare-fun m!419969 () Bool)

(assert (=> b!431815 m!419969))

(assert (=> b!431815 m!419969))

(assert (=> b!431815 m!419965))

(declare-fun m!419971 () Bool)

(assert (=> b!431815 m!419971))

(declare-fun m!419973 () Bool)

(assert (=> b!431823 m!419973))

(declare-fun m!419975 () Bool)

(assert (=> b!431825 m!419975))

(declare-fun m!419977 () Bool)

(assert (=> b!431825 m!419977))

(declare-fun m!419979 () Bool)

(assert (=> b!431825 m!419979))

(declare-fun m!419981 () Bool)

(assert (=> b!431812 m!419981))

(assert (=> b!431812 m!419981))

(declare-fun m!419983 () Bool)

(assert (=> b!431812 m!419983))

(assert (=> b!431812 m!419963))

(assert (=> b!431812 m!419963))

(declare-fun m!419985 () Bool)

(assert (=> b!431812 m!419985))

(declare-fun m!419987 () Bool)

(assert (=> b!431813 m!419987))

(declare-fun m!419989 () Bool)

(assert (=> mapNonEmpty!18582 m!419989))

(declare-fun m!419991 () Bool)

(assert (=> start!39896 m!419991))

(declare-fun m!419993 () Bool)

(assert (=> start!39896 m!419993))

(declare-fun m!419995 () Bool)

(assert (=> b!431819 m!419995))

(declare-fun m!419997 () Bool)

(assert (=> b!431824 m!419997))

(assert (=> b!431816 m!419963))

(declare-fun m!419999 () Bool)

(assert (=> b!431816 m!419999))

(declare-fun m!420001 () Bool)

(assert (=> b!431816 m!420001))

(declare-fun m!420003 () Bool)

(assert (=> b!431816 m!420003))

(assert (=> b!431816 m!419963))

(declare-fun m!420005 () Bool)

(assert (=> b!431816 m!420005))

(declare-fun m!420007 () Bool)

(assert (=> b!431816 m!420007))

(declare-fun m!420009 () Bool)

(assert (=> b!431821 m!420009))

(declare-fun m!420011 () Bool)

(assert (=> b!431818 m!420011))

(declare-fun m!420013 () Bool)

(assert (=> b!431826 m!420013))

(check-sat (not b_next!10155) tp_is_empty!11307 (not b!431818) (not b!431812) (not b!431827) (not b!431815) (not start!39896) (not b!431819) (not b!431824) (not b_lambda!9273) (not b!431823) (not b!431825) b_and!17989 (not b!431813) (not mapNonEmpty!18582) (not b!431826) (not b!431816) (not b!431814))
(check-sat b_and!17989 (not b_next!10155))
