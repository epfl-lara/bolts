; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38774 () Bool)

(assert start!38774)

(declare-fun b!403934 () Bool)

(declare-fun res!232959 () Bool)

(declare-fun e!243062 () Bool)

(assert (=> b!403934 (=> (not res!232959) (not e!243062))))

(declare-datatypes ((array!24239 0))(
  ( (array!24240 (arr!11566 (Array (_ BitVec 32) (_ BitVec 64))) (size!11918 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24239)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14685 0))(
  ( (V!14686 (val!5137 Int)) )
))
(declare-datatypes ((ValueCell!4749 0))(
  ( (ValueCellFull!4749 (v!7380 V!14685)) (EmptyCell!4749) )
))
(declare-datatypes ((array!24241 0))(
  ( (array!24242 (arr!11567 (Array (_ BitVec 32) ValueCell!4749)) (size!11919 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24241)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!403934 (= res!232959 (and (= (size!11919 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11918 _keys!709) (size!11919 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403935 () Bool)

(declare-fun res!232957 () Bool)

(assert (=> b!403935 (=> (not res!232957) (not e!243062))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403935 (= res!232957 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!403936 () Bool)

(declare-fun e!243065 () Bool)

(declare-fun e!243066 () Bool)

(declare-fun mapRes!16899 () Bool)

(assert (=> b!403936 (= e!243065 (and e!243066 mapRes!16899))))

(declare-fun condMapEmpty!16899 () Bool)

(declare-fun mapDefault!16899 () ValueCell!4749)

(assert (=> b!403936 (= condMapEmpty!16899 (= (arr!11567 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4749)) mapDefault!16899)))))

(declare-fun b!403937 () Bool)

(declare-fun e!243067 () Bool)

(assert (=> b!403937 (= e!243067 false)))

(declare-fun lt!188097 () Bool)

(declare-fun lt!188096 () array!24239)

(declare-datatypes ((List!6715 0))(
  ( (Nil!6712) (Cons!6711 (h!7567 (_ BitVec 64)) (t!11897 List!6715)) )
))
(declare-fun arrayNoDuplicates!0 (array!24239 (_ BitVec 32) List!6715) Bool)

(assert (=> b!403937 (= lt!188097 (arrayNoDuplicates!0 lt!188096 #b00000000000000000000000000000000 Nil!6712))))

(declare-fun b!403938 () Bool)

(declare-fun tp_is_empty!10185 () Bool)

(assert (=> b!403938 (= e!243066 tp_is_empty!10185)))

(declare-fun mapNonEmpty!16899 () Bool)

(declare-fun tp!33018 () Bool)

(declare-fun e!243063 () Bool)

(assert (=> mapNonEmpty!16899 (= mapRes!16899 (and tp!33018 e!243063))))

(declare-fun mapKey!16899 () (_ BitVec 32))

(declare-fun mapRest!16899 () (Array (_ BitVec 32) ValueCell!4749))

(declare-fun mapValue!16899 () ValueCell!4749)

(assert (=> mapNonEmpty!16899 (= (arr!11567 _values!549) (store mapRest!16899 mapKey!16899 mapValue!16899))))

(declare-fun b!403939 () Bool)

(declare-fun res!232954 () Bool)

(assert (=> b!403939 (=> (not res!232954) (not e!243062))))

(assert (=> b!403939 (= res!232954 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6712))))

(declare-fun b!403940 () Bool)

(assert (=> b!403940 (= e!243063 tp_is_empty!10185)))

(declare-fun b!403941 () Bool)

(declare-fun res!232960 () Bool)

(assert (=> b!403941 (=> (not res!232960) (not e!243062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403941 (= res!232960 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16899 () Bool)

(assert (=> mapIsEmpty!16899 mapRes!16899))

(declare-fun b!403942 () Bool)

(declare-fun res!232961 () Bool)

(assert (=> b!403942 (=> (not res!232961) (not e!243062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403942 (= res!232961 (validMask!0 mask!1025))))

(declare-fun b!403943 () Bool)

(declare-fun res!232956 () Bool)

(assert (=> b!403943 (=> (not res!232956) (not e!243062))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403943 (= res!232956 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11918 _keys!709))))))

(declare-fun res!232962 () Bool)

(assert (=> start!38774 (=> (not res!232962) (not e!243062))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38774 (= res!232962 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11918 _keys!709))))))

(assert (=> start!38774 e!243062))

(assert (=> start!38774 true))

(declare-fun array_inv!8452 (array!24241) Bool)

(assert (=> start!38774 (and (array_inv!8452 _values!549) e!243065)))

(declare-fun array_inv!8453 (array!24239) Bool)

(assert (=> start!38774 (array_inv!8453 _keys!709)))

(declare-fun b!403944 () Bool)

(assert (=> b!403944 (= e!243062 e!243067)))

(declare-fun res!232953 () Bool)

(assert (=> b!403944 (=> (not res!232953) (not e!243067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24239 (_ BitVec 32)) Bool)

(assert (=> b!403944 (= res!232953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188096 mask!1025))))

(assert (=> b!403944 (= lt!188096 (array!24240 (store (arr!11566 _keys!709) i!563 k0!794) (size!11918 _keys!709)))))

(declare-fun b!403945 () Bool)

(declare-fun res!232955 () Bool)

(assert (=> b!403945 (=> (not res!232955) (not e!243062))))

(assert (=> b!403945 (= res!232955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403946 () Bool)

(declare-fun res!232958 () Bool)

(assert (=> b!403946 (=> (not res!232958) (not e!243062))))

(assert (=> b!403946 (= res!232958 (or (= (select (arr!11566 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11566 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38774 res!232962) b!403942))

(assert (= (and b!403942 res!232961) b!403934))

(assert (= (and b!403934 res!232959) b!403945))

(assert (= (and b!403945 res!232955) b!403939))

(assert (= (and b!403939 res!232954) b!403943))

(assert (= (and b!403943 res!232956) b!403941))

(assert (= (and b!403941 res!232960) b!403946))

(assert (= (and b!403946 res!232958) b!403935))

(assert (= (and b!403935 res!232957) b!403944))

(assert (= (and b!403944 res!232953) b!403937))

(assert (= (and b!403936 condMapEmpty!16899) mapIsEmpty!16899))

(assert (= (and b!403936 (not condMapEmpty!16899)) mapNonEmpty!16899))

(get-info :version)

(assert (= (and mapNonEmpty!16899 ((_ is ValueCellFull!4749) mapValue!16899)) b!403940))

(assert (= (and b!403936 ((_ is ValueCellFull!4749) mapDefault!16899)) b!403938))

(assert (= start!38774 b!403936))

(declare-fun m!396933 () Bool)

(assert (=> b!403942 m!396933))

(declare-fun m!396935 () Bool)

(assert (=> b!403946 m!396935))

(declare-fun m!396937 () Bool)

(assert (=> b!403945 m!396937))

(declare-fun m!396939 () Bool)

(assert (=> mapNonEmpty!16899 m!396939))

(declare-fun m!396941 () Bool)

(assert (=> b!403935 m!396941))

(declare-fun m!396943 () Bool)

(assert (=> start!38774 m!396943))

(declare-fun m!396945 () Bool)

(assert (=> start!38774 m!396945))

(declare-fun m!396947 () Bool)

(assert (=> b!403944 m!396947))

(declare-fun m!396949 () Bool)

(assert (=> b!403944 m!396949))

(declare-fun m!396951 () Bool)

(assert (=> b!403939 m!396951))

(declare-fun m!396953 () Bool)

(assert (=> b!403941 m!396953))

(declare-fun m!396955 () Bool)

(assert (=> b!403937 m!396955))

(check-sat (not b!403945) (not b!403944) (not b!403937) (not start!38774) (not b!403941) (not b!403939) (not b!403935) (not b!403942) (not mapNonEmpty!16899) tp_is_empty!10185)
(check-sat)
