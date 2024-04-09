; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37134 () Bool)

(assert start!37134)

(declare-fun b_free!8253 () Bool)

(declare-fun b_next!8253 () Bool)

(assert (=> start!37134 (= b_free!8253 (not b_next!8253))))

(declare-fun tp!29474 () Bool)

(declare-fun b_and!15513 () Bool)

(assert (=> start!37134 (= tp!29474 b_and!15513)))

(declare-fun b!373932 () Bool)

(declare-fun e!227925 () Bool)

(declare-fun tp_is_empty!8901 () Bool)

(assert (=> b!373932 (= e!227925 tp_is_empty!8901)))

(declare-fun b!373933 () Bool)

(declare-fun res!210858 () Bool)

(declare-fun e!227924 () Bool)

(assert (=> b!373933 (=> (not res!210858) (not e!227924))))

(declare-datatypes ((array!21707 0))(
  ( (array!21708 (arr!10319 (Array (_ BitVec 32) (_ BitVec 64))) (size!10671 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21707)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21707 (_ BitVec 32)) Bool)

(assert (=> b!373933 (= res!210858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373934 () Bool)

(declare-fun res!210859 () Bool)

(assert (=> b!373934 (=> (not res!210859) (not e!227924))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373934 (= res!210859 (or (= (select (arr!10319 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10319 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373935 () Bool)

(declare-fun e!227927 () Bool)

(declare-fun e!227929 () Bool)

(declare-fun mapRes!14916 () Bool)

(assert (=> b!373935 (= e!227927 (and e!227929 mapRes!14916))))

(declare-fun condMapEmpty!14916 () Bool)

(declare-datatypes ((V!12973 0))(
  ( (V!12974 (val!4495 Int)) )
))
(declare-datatypes ((ValueCell!4107 0))(
  ( (ValueCellFull!4107 (v!6688 V!12973)) (EmptyCell!4107) )
))
(declare-datatypes ((array!21709 0))(
  ( (array!21710 (arr!10320 (Array (_ BitVec 32) ValueCell!4107)) (size!10672 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21709)

(declare-fun mapDefault!14916 () ValueCell!4107)

(assert (=> b!373935 (= condMapEmpty!14916 (= (arr!10320 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4107)) mapDefault!14916)))))

(declare-fun b!373936 () Bool)

(declare-fun res!210851 () Bool)

(assert (=> b!373936 (=> (not res!210851) (not e!227924))))

(declare-datatypes ((List!5822 0))(
  ( (Nil!5819) (Cons!5818 (h!6674 (_ BitVec 64)) (t!10980 List!5822)) )
))
(declare-fun arrayNoDuplicates!0 (array!21707 (_ BitVec 32) List!5822) Bool)

(assert (=> b!373936 (= res!210851 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5819))))

(declare-fun b!373937 () Bool)

(declare-fun e!227928 () Bool)

(assert (=> b!373937 (= e!227924 e!227928)))

(declare-fun res!210853 () Bool)

(assert (=> b!373937 (=> (not res!210853) (not e!227928))))

(declare-fun lt!172231 () array!21707)

(assert (=> b!373937 (= res!210853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172231 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!373937 (= lt!172231 (array!21708 (store (arr!10319 _keys!658) i!548 k0!778) (size!10671 _keys!658)))))

(declare-fun res!210856 () Bool)

(assert (=> start!37134 (=> (not res!210856) (not e!227924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37134 (= res!210856 (validMask!0 mask!970))))

(assert (=> start!37134 e!227924))

(declare-fun array_inv!7614 (array!21709) Bool)

(assert (=> start!37134 (and (array_inv!7614 _values!506) e!227927)))

(assert (=> start!37134 tp!29474))

(assert (=> start!37134 true))

(assert (=> start!37134 tp_is_empty!8901))

(declare-fun array_inv!7615 (array!21707) Bool)

(assert (=> start!37134 (array_inv!7615 _keys!658)))

(declare-fun mapNonEmpty!14916 () Bool)

(declare-fun tp!29475 () Bool)

(assert (=> mapNonEmpty!14916 (= mapRes!14916 (and tp!29475 e!227925))))

(declare-fun mapValue!14916 () ValueCell!4107)

(declare-fun mapRest!14916 () (Array (_ BitVec 32) ValueCell!4107))

(declare-fun mapKey!14916 () (_ BitVec 32))

(assert (=> mapNonEmpty!14916 (= (arr!10320 _values!506) (store mapRest!14916 mapKey!14916 mapValue!14916))))

(declare-fun b!373938 () Bool)

(assert (=> b!373938 (= e!227929 tp_is_empty!8901)))

(declare-fun b!373939 () Bool)

(declare-fun res!210852 () Bool)

(assert (=> b!373939 (=> (not res!210852) (not e!227924))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373939 (= res!210852 (and (= (size!10672 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10671 _keys!658) (size!10672 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373940 () Bool)

(declare-fun res!210850 () Bool)

(assert (=> b!373940 (=> (not res!210850) (not e!227928))))

(assert (=> b!373940 (= res!210850 (arrayNoDuplicates!0 lt!172231 #b00000000000000000000000000000000 Nil!5819))))

(declare-fun b!373941 () Bool)

(declare-fun e!227931 () Bool)

(declare-fun e!227926 () Bool)

(assert (=> b!373941 (= e!227931 e!227926)))

(declare-fun res!210855 () Bool)

(assert (=> b!373941 (=> res!210855 e!227926)))

(assert (=> b!373941 (= res!210855 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!5952 0))(
  ( (tuple2!5953 (_1!2986 (_ BitVec 64)) (_2!2986 V!12973)) )
))
(declare-datatypes ((List!5823 0))(
  ( (Nil!5820) (Cons!5819 (h!6675 tuple2!5952) (t!10981 List!5823)) )
))
(declare-datatypes ((ListLongMap!4879 0))(
  ( (ListLongMap!4880 (toList!2455 List!5823)) )
))
(declare-fun lt!172234 () ListLongMap!4879)

(declare-fun lt!172227 () ListLongMap!4879)

(assert (=> b!373941 (= lt!172234 lt!172227)))

(declare-fun lt!172230 () ListLongMap!4879)

(declare-fun lt!172220 () tuple2!5952)

(declare-fun +!796 (ListLongMap!4879 tuple2!5952) ListLongMap!4879)

(assert (=> b!373941 (= lt!172227 (+!796 lt!172230 lt!172220))))

(declare-fun v!373 () V!12973)

(declare-datatypes ((Unit!11495 0))(
  ( (Unit!11496) )
))
(declare-fun lt!172219 () Unit!11495)

(declare-fun zeroValue!472 () V!12973)

(declare-fun lt!172222 () ListLongMap!4879)

(declare-fun addCommutativeForDiffKeys!225 (ListLongMap!4879 (_ BitVec 64) V!12973 (_ BitVec 64) V!12973) Unit!11495)

(assert (=> b!373941 (= lt!172219 (addCommutativeForDiffKeys!225 lt!172222 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172225 () ListLongMap!4879)

(declare-fun lt!172228 () tuple2!5952)

(assert (=> b!373941 (= lt!172225 (+!796 lt!172234 lt!172228))))

(declare-fun lt!172223 () ListLongMap!4879)

(declare-fun lt!172221 () tuple2!5952)

(assert (=> b!373941 (= lt!172234 (+!796 lt!172223 lt!172221))))

(declare-fun lt!172232 () ListLongMap!4879)

(declare-fun lt!172226 () ListLongMap!4879)

(assert (=> b!373941 (= lt!172232 lt!172226)))

(assert (=> b!373941 (= lt!172226 (+!796 lt!172230 lt!172228))))

(assert (=> b!373941 (= lt!172230 (+!796 lt!172222 lt!172221))))

(declare-fun lt!172218 () ListLongMap!4879)

(assert (=> b!373941 (= lt!172225 (+!796 (+!796 lt!172218 lt!172221) lt!172228))))

(declare-fun minValue!472 () V!12973)

(assert (=> b!373941 (= lt!172228 (tuple2!5953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373941 (= lt!172221 (tuple2!5953 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!14916 () Bool)

(assert (=> mapIsEmpty!14916 mapRes!14916))

(declare-fun b!373942 () Bool)

(declare-fun res!210860 () Bool)

(assert (=> b!373942 (=> (not res!210860) (not e!227924))))

(declare-fun arrayContainsKey!0 (array!21707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373942 (= res!210860 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373943 () Bool)

(assert (=> b!373943 (= e!227926 true)))

(assert (=> b!373943 (= (+!796 lt!172227 lt!172228) (+!796 lt!172226 lt!172220))))

(declare-fun lt!172224 () Unit!11495)

(assert (=> b!373943 (= lt!172224 (addCommutativeForDiffKeys!225 lt!172230 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373944 () Bool)

(declare-fun res!210849 () Bool)

(assert (=> b!373944 (=> (not res!210849) (not e!227924))))

(assert (=> b!373944 (= res!210849 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10671 _keys!658))))))

(declare-fun b!373945 () Bool)

(assert (=> b!373945 (= e!227928 (not e!227931))))

(declare-fun res!210857 () Bool)

(assert (=> b!373945 (=> res!210857 e!227931)))

(assert (=> b!373945 (= res!210857 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1901 (array!21707 array!21709 (_ BitVec 32) (_ BitVec 32) V!12973 V!12973 (_ BitVec 32) Int) ListLongMap!4879)

(assert (=> b!373945 (= lt!172232 (getCurrentListMap!1901 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172229 () array!21709)

(assert (=> b!373945 (= lt!172225 (getCurrentListMap!1901 lt!172231 lt!172229 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373945 (and (= lt!172218 lt!172223) (= lt!172223 lt!172218))))

(assert (=> b!373945 (= lt!172223 (+!796 lt!172222 lt!172220))))

(assert (=> b!373945 (= lt!172220 (tuple2!5953 k0!778 v!373))))

(declare-fun lt!172233 () Unit!11495)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!52 (array!21707 array!21709 (_ BitVec 32) (_ BitVec 32) V!12973 V!12973 (_ BitVec 32) (_ BitVec 64) V!12973 (_ BitVec 32) Int) Unit!11495)

(assert (=> b!373945 (= lt!172233 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!52 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!719 (array!21707 array!21709 (_ BitVec 32) (_ BitVec 32) V!12973 V!12973 (_ BitVec 32) Int) ListLongMap!4879)

(assert (=> b!373945 (= lt!172218 (getCurrentListMapNoExtraKeys!719 lt!172231 lt!172229 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373945 (= lt!172229 (array!21710 (store (arr!10320 _values!506) i!548 (ValueCellFull!4107 v!373)) (size!10672 _values!506)))))

(assert (=> b!373945 (= lt!172222 (getCurrentListMapNoExtraKeys!719 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373946 () Bool)

(declare-fun res!210854 () Bool)

(assert (=> b!373946 (=> (not res!210854) (not e!227924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373946 (= res!210854 (validKeyInArray!0 k0!778))))

(assert (= (and start!37134 res!210856) b!373939))

(assert (= (and b!373939 res!210852) b!373933))

(assert (= (and b!373933 res!210858) b!373936))

(assert (= (and b!373936 res!210851) b!373944))

(assert (= (and b!373944 res!210849) b!373946))

(assert (= (and b!373946 res!210854) b!373934))

(assert (= (and b!373934 res!210859) b!373942))

(assert (= (and b!373942 res!210860) b!373937))

(assert (= (and b!373937 res!210853) b!373940))

(assert (= (and b!373940 res!210850) b!373945))

(assert (= (and b!373945 (not res!210857)) b!373941))

(assert (= (and b!373941 (not res!210855)) b!373943))

(assert (= (and b!373935 condMapEmpty!14916) mapIsEmpty!14916))

(assert (= (and b!373935 (not condMapEmpty!14916)) mapNonEmpty!14916))

(get-info :version)

(assert (= (and mapNonEmpty!14916 ((_ is ValueCellFull!4107) mapValue!14916)) b!373932))

(assert (= (and b!373935 ((_ is ValueCellFull!4107) mapDefault!14916)) b!373938))

(assert (= start!37134 b!373935))

(declare-fun m!370121 () Bool)

(assert (=> mapNonEmpty!14916 m!370121))

(declare-fun m!370123 () Bool)

(assert (=> b!373936 m!370123))

(declare-fun m!370125 () Bool)

(assert (=> b!373942 m!370125))

(declare-fun m!370127 () Bool)

(assert (=> b!373937 m!370127))

(declare-fun m!370129 () Bool)

(assert (=> b!373937 m!370129))

(declare-fun m!370131 () Bool)

(assert (=> b!373943 m!370131))

(declare-fun m!370133 () Bool)

(assert (=> b!373943 m!370133))

(declare-fun m!370135 () Bool)

(assert (=> b!373943 m!370135))

(declare-fun m!370137 () Bool)

(assert (=> b!373940 m!370137))

(declare-fun m!370139 () Bool)

(assert (=> b!373946 m!370139))

(declare-fun m!370141 () Bool)

(assert (=> b!373945 m!370141))

(declare-fun m!370143 () Bool)

(assert (=> b!373945 m!370143))

(declare-fun m!370145 () Bool)

(assert (=> b!373945 m!370145))

(declare-fun m!370147 () Bool)

(assert (=> b!373945 m!370147))

(declare-fun m!370149 () Bool)

(assert (=> b!373945 m!370149))

(declare-fun m!370151 () Bool)

(assert (=> b!373945 m!370151))

(declare-fun m!370153 () Bool)

(assert (=> b!373945 m!370153))

(declare-fun m!370155 () Bool)

(assert (=> b!373933 m!370155))

(declare-fun m!370157 () Bool)

(assert (=> start!37134 m!370157))

(declare-fun m!370159 () Bool)

(assert (=> start!37134 m!370159))

(declare-fun m!370161 () Bool)

(assert (=> start!37134 m!370161))

(declare-fun m!370163 () Bool)

(assert (=> b!373934 m!370163))

(declare-fun m!370165 () Bool)

(assert (=> b!373941 m!370165))

(declare-fun m!370167 () Bool)

(assert (=> b!373941 m!370167))

(assert (=> b!373941 m!370165))

(declare-fun m!370169 () Bool)

(assert (=> b!373941 m!370169))

(declare-fun m!370171 () Bool)

(assert (=> b!373941 m!370171))

(declare-fun m!370173 () Bool)

(assert (=> b!373941 m!370173))

(declare-fun m!370175 () Bool)

(assert (=> b!373941 m!370175))

(declare-fun m!370177 () Bool)

(assert (=> b!373941 m!370177))

(declare-fun m!370179 () Bool)

(assert (=> b!373941 m!370179))

(check-sat (not start!37134) (not b!373946) (not mapNonEmpty!14916) tp_is_empty!8901 (not b!373936) (not b!373940) b_and!15513 (not b!373933) (not b!373945) (not b!373943) (not b_next!8253) (not b!373941) (not b!373937) (not b!373942))
(check-sat b_and!15513 (not b_next!8253))
