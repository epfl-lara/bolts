; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82516 () Bool)

(assert start!82516)

(declare-fun b!961220 () Bool)

(declare-fun e!541991 () Bool)

(declare-fun tp_is_empty!21423 () Bool)

(assert (=> b!961220 (= e!541991 tp_is_empty!21423)))

(declare-fun b!961221 () Bool)

(declare-fun e!541992 () Bool)

(assert (=> b!961221 (= e!541992 tp_is_empty!21423)))

(declare-fun b!961222 () Bool)

(declare-fun e!541989 () Bool)

(assert (=> b!961222 (= e!541989 false)))

(declare-fun lt!430689 () Bool)

(declare-datatypes ((array!58945 0))(
  ( (array!58946 (arr!28337 (Array (_ BitVec 32) (_ BitVec 64))) (size!28817 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58945)

(declare-datatypes ((List!19807 0))(
  ( (Nil!19804) (Cons!19803 (h!20965 (_ BitVec 64)) (t!28178 List!19807)) )
))
(declare-fun arrayNoDuplicates!0 (array!58945 (_ BitVec 32) List!19807) Bool)

(assert (=> b!961222 (= lt!430689 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19804))))

(declare-fun mapIsEmpty!34129 () Bool)

(declare-fun mapRes!34129 () Bool)

(assert (=> mapIsEmpty!34129 mapRes!34129))

(declare-fun mapNonEmpty!34129 () Bool)

(declare-fun tp!65059 () Bool)

(assert (=> mapNonEmpty!34129 (= mapRes!34129 (and tp!65059 e!541992))))

(declare-datatypes ((V!33547 0))(
  ( (V!33548 (val!10762 Int)) )
))
(declare-datatypes ((ValueCell!10230 0))(
  ( (ValueCellFull!10230 (v!13320 V!33547)) (EmptyCell!10230) )
))
(declare-fun mapValue!34129 () ValueCell!10230)

(declare-fun mapRest!34129 () (Array (_ BitVec 32) ValueCell!10230))

(declare-datatypes ((array!58947 0))(
  ( (array!58948 (arr!28338 (Array (_ BitVec 32) ValueCell!10230)) (size!28818 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58947)

(declare-fun mapKey!34129 () (_ BitVec 32))

(assert (=> mapNonEmpty!34129 (= (arr!28338 _values!1400) (store mapRest!34129 mapKey!34129 mapValue!34129))))

(declare-fun res!643454 () Bool)

(assert (=> start!82516 (=> (not res!643454) (not e!541989))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82516 (= res!643454 (validMask!0 mask!2110))))

(assert (=> start!82516 e!541989))

(assert (=> start!82516 true))

(declare-fun e!541990 () Bool)

(declare-fun array_inv!21887 (array!58947) Bool)

(assert (=> start!82516 (and (array_inv!21887 _values!1400) e!541990)))

(declare-fun array_inv!21888 (array!58945) Bool)

(assert (=> start!82516 (array_inv!21888 _keys!1686)))

(declare-fun b!961223 () Bool)

(assert (=> b!961223 (= e!541990 (and e!541991 mapRes!34129))))

(declare-fun condMapEmpty!34129 () Bool)

(declare-fun mapDefault!34129 () ValueCell!10230)

(assert (=> b!961223 (= condMapEmpty!34129 (= (arr!28338 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10230)) mapDefault!34129)))))

(declare-fun b!961224 () Bool)

(declare-fun res!643453 () Bool)

(assert (=> b!961224 (=> (not res!643453) (not e!541989))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961224 (= res!643453 (and (= (size!28818 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28817 _keys!1686) (size!28818 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961225 () Bool)

(declare-fun res!643452 () Bool)

(assert (=> b!961225 (=> (not res!643452) (not e!541989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58945 (_ BitVec 32)) Bool)

(assert (=> b!961225 (= res!643452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82516 res!643454) b!961224))

(assert (= (and b!961224 res!643453) b!961225))

(assert (= (and b!961225 res!643452) b!961222))

(assert (= (and b!961223 condMapEmpty!34129) mapIsEmpty!34129))

(assert (= (and b!961223 (not condMapEmpty!34129)) mapNonEmpty!34129))

(get-info :version)

(assert (= (and mapNonEmpty!34129 ((_ is ValueCellFull!10230) mapValue!34129)) b!961221))

(assert (= (and b!961223 ((_ is ValueCellFull!10230) mapDefault!34129)) b!961220))

(assert (= start!82516 b!961223))

(declare-fun m!891301 () Bool)

(assert (=> b!961222 m!891301))

(declare-fun m!891303 () Bool)

(assert (=> mapNonEmpty!34129 m!891303))

(declare-fun m!891305 () Bool)

(assert (=> start!82516 m!891305))

(declare-fun m!891307 () Bool)

(assert (=> start!82516 m!891307))

(declare-fun m!891309 () Bool)

(assert (=> start!82516 m!891309))

(declare-fun m!891311 () Bool)

(assert (=> b!961225 m!891311))

(check-sat tp_is_empty!21423 (not b!961222) (not start!82516) (not b!961225) (not mapNonEmpty!34129))
(check-sat)
