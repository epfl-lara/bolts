; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37734 () Bool)

(assert start!37734)

(declare-fun b_free!8829 () Bool)

(declare-fun b_next!8829 () Bool)

(assert (=> start!37734 (= b_free!8829 (not b_next!8829))))

(declare-fun tp!31238 () Bool)

(declare-fun b_and!16089 () Bool)

(assert (=> start!37734 (= tp!31238 b_and!16089)))

(declare-fun b!386675 () Bool)

(declare-fun e!234523 () Bool)

(declare-fun tp_is_empty!9501 () Bool)

(assert (=> b!386675 (= e!234523 tp_is_empty!9501)))

(declare-fun mapNonEmpty!15816 () Bool)

(declare-fun mapRes!15816 () Bool)

(declare-fun tp!31239 () Bool)

(declare-fun e!234521 () Bool)

(assert (=> mapNonEmpty!15816 (= mapRes!15816 (and tp!31239 e!234521))))

(declare-datatypes ((V!13773 0))(
  ( (V!13774 (val!4795 Int)) )
))
(declare-datatypes ((ValueCell!4407 0))(
  ( (ValueCellFull!4407 (v!6988 V!13773)) (EmptyCell!4407) )
))
(declare-datatypes ((array!22873 0))(
  ( (array!22874 (arr!10902 (Array (_ BitVec 32) ValueCell!4407)) (size!11254 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22873)

(declare-fun mapValue!15816 () ValueCell!4407)

(declare-fun mapKey!15816 () (_ BitVec 32))

(declare-fun mapRest!15816 () (Array (_ BitVec 32) ValueCell!4407))

(assert (=> mapNonEmpty!15816 (= (arr!10902 _values!506) (store mapRest!15816 mapKey!15816 mapValue!15816))))

(declare-fun b!386676 () Bool)

(declare-fun res!220893 () Bool)

(declare-fun e!234520 () Bool)

(assert (=> b!386676 (=> (not res!220893) (not e!234520))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386676 (= res!220893 (validKeyInArray!0 k0!778))))

(declare-fun res!220896 () Bool)

(assert (=> start!37734 (=> (not res!220896) (not e!234520))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37734 (= res!220896 (validMask!0 mask!970))))

(assert (=> start!37734 e!234520))

(declare-fun e!234522 () Bool)

(declare-fun array_inv!7994 (array!22873) Bool)

(assert (=> start!37734 (and (array_inv!7994 _values!506) e!234522)))

(assert (=> start!37734 tp!31238))

(assert (=> start!37734 true))

(assert (=> start!37734 tp_is_empty!9501))

(declare-datatypes ((array!22875 0))(
  ( (array!22876 (arr!10903 (Array (_ BitVec 32) (_ BitVec 64))) (size!11255 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22875)

(declare-fun array_inv!7995 (array!22875) Bool)

(assert (=> start!37734 (array_inv!7995 _keys!658)))

(declare-fun b!386677 () Bool)

(declare-fun res!220892 () Bool)

(assert (=> b!386677 (=> (not res!220892) (not e!234520))))

(declare-fun arrayContainsKey!0 (array!22875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386677 (= res!220892 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!386678 () Bool)

(assert (=> b!386678 (= e!234522 (and e!234523 mapRes!15816))))

(declare-fun condMapEmpty!15816 () Bool)

(declare-fun mapDefault!15816 () ValueCell!4407)

(assert (=> b!386678 (= condMapEmpty!15816 (= (arr!10902 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4407)) mapDefault!15816)))))

(declare-fun b!386679 () Bool)

(declare-fun res!220900 () Bool)

(declare-fun e!234525 () Bool)

(assert (=> b!386679 (=> (not res!220900) (not e!234525))))

(declare-fun lt!181868 () array!22875)

(declare-datatypes ((List!6270 0))(
  ( (Nil!6267) (Cons!6266 (h!7122 (_ BitVec 64)) (t!11428 List!6270)) )
))
(declare-fun arrayNoDuplicates!0 (array!22875 (_ BitVec 32) List!6270) Bool)

(assert (=> b!386679 (= res!220900 (arrayNoDuplicates!0 lt!181868 #b00000000000000000000000000000000 Nil!6267))))

(declare-fun b!386680 () Bool)

(declare-fun res!220898 () Bool)

(assert (=> b!386680 (=> (not res!220898) (not e!234520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22875 (_ BitVec 32)) Bool)

(assert (=> b!386680 (= res!220898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386681 () Bool)

(assert (=> b!386681 (= e!234521 tp_is_empty!9501)))

(declare-fun b!386682 () Bool)

(declare-fun res!220894 () Bool)

(assert (=> b!386682 (=> (not res!220894) (not e!234520))))

(assert (=> b!386682 (= res!220894 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6267))))

(declare-fun b!386683 () Bool)

(assert (=> b!386683 (= e!234520 e!234525)))

(declare-fun res!220901 () Bool)

(assert (=> b!386683 (=> (not res!220901) (not e!234525))))

(assert (=> b!386683 (= res!220901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181868 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386683 (= lt!181868 (array!22876 (store (arr!10903 _keys!658) i!548 k0!778) (size!11255 _keys!658)))))

(declare-fun mapIsEmpty!15816 () Bool)

(assert (=> mapIsEmpty!15816 mapRes!15816))

(declare-fun b!386684 () Bool)

(declare-fun res!220899 () Bool)

(assert (=> b!386684 (=> (not res!220899) (not e!234520))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386684 (= res!220899 (and (= (size!11254 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11255 _keys!658) (size!11254 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386685 () Bool)

(declare-fun res!220895 () Bool)

(assert (=> b!386685 (=> (not res!220895) (not e!234520))))

(assert (=> b!386685 (= res!220895 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11255 _keys!658))))))

(declare-fun b!386686 () Bool)

(assert (=> b!386686 (= e!234525 false)))

(declare-datatypes ((tuple2!6386 0))(
  ( (tuple2!6387 (_1!3203 (_ BitVec 64)) (_2!3203 V!13773)) )
))
(declare-datatypes ((List!6271 0))(
  ( (Nil!6268) (Cons!6267 (h!7123 tuple2!6386) (t!11429 List!6271)) )
))
(declare-datatypes ((ListLongMap!5313 0))(
  ( (ListLongMap!5314 (toList!2672 List!6271)) )
))
(declare-fun lt!181870 () ListLongMap!5313)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13773)

(declare-fun v!373 () V!13773)

(declare-fun minValue!472 () V!13773)

(declare-fun getCurrentListMapNoExtraKeys!906 (array!22875 array!22873 (_ BitVec 32) (_ BitVec 32) V!13773 V!13773 (_ BitVec 32) Int) ListLongMap!5313)

(assert (=> b!386686 (= lt!181870 (getCurrentListMapNoExtraKeys!906 lt!181868 (array!22874 (store (arr!10902 _values!506) i!548 (ValueCellFull!4407 v!373)) (size!11254 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181869 () ListLongMap!5313)

(assert (=> b!386686 (= lt!181869 (getCurrentListMapNoExtraKeys!906 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386687 () Bool)

(declare-fun res!220897 () Bool)

(assert (=> b!386687 (=> (not res!220897) (not e!234520))))

(assert (=> b!386687 (= res!220897 (or (= (select (arr!10903 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10903 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37734 res!220896) b!386684))

(assert (= (and b!386684 res!220899) b!386680))

(assert (= (and b!386680 res!220898) b!386682))

(assert (= (and b!386682 res!220894) b!386685))

(assert (= (and b!386685 res!220895) b!386676))

(assert (= (and b!386676 res!220893) b!386687))

(assert (= (and b!386687 res!220897) b!386677))

(assert (= (and b!386677 res!220892) b!386683))

(assert (= (and b!386683 res!220901) b!386679))

(assert (= (and b!386679 res!220900) b!386686))

(assert (= (and b!386678 condMapEmpty!15816) mapIsEmpty!15816))

(assert (= (and b!386678 (not condMapEmpty!15816)) mapNonEmpty!15816))

(get-info :version)

(assert (= (and mapNonEmpty!15816 ((_ is ValueCellFull!4407) mapValue!15816)) b!386681))

(assert (= (and b!386678 ((_ is ValueCellFull!4407) mapDefault!15816)) b!386675))

(assert (= start!37734 b!386678))

(declare-fun m!382961 () Bool)

(assert (=> b!386677 m!382961))

(declare-fun m!382963 () Bool)

(assert (=> b!386676 m!382963))

(declare-fun m!382965 () Bool)

(assert (=> b!386680 m!382965))

(declare-fun m!382967 () Bool)

(assert (=> b!386679 m!382967))

(declare-fun m!382969 () Bool)

(assert (=> b!386683 m!382969))

(declare-fun m!382971 () Bool)

(assert (=> b!386683 m!382971))

(declare-fun m!382973 () Bool)

(assert (=> b!386687 m!382973))

(declare-fun m!382975 () Bool)

(assert (=> mapNonEmpty!15816 m!382975))

(declare-fun m!382977 () Bool)

(assert (=> start!37734 m!382977))

(declare-fun m!382979 () Bool)

(assert (=> start!37734 m!382979))

(declare-fun m!382981 () Bool)

(assert (=> start!37734 m!382981))

(declare-fun m!382983 () Bool)

(assert (=> b!386682 m!382983))

(declare-fun m!382985 () Bool)

(assert (=> b!386686 m!382985))

(declare-fun m!382987 () Bool)

(assert (=> b!386686 m!382987))

(declare-fun m!382989 () Bool)

(assert (=> b!386686 m!382989))

(check-sat (not b!386682) b_and!16089 (not b!386683) tp_is_empty!9501 (not b!386676) (not b!386677) (not b!386680) (not start!37734) (not b!386686) (not mapNonEmpty!15816) (not b!386679) (not b_next!8829))
(check-sat b_and!16089 (not b_next!8829))
