; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82522 () Bool)

(assert start!82522)

(declare-fun mapIsEmpty!34138 () Bool)

(declare-fun mapRes!34138 () Bool)

(assert (=> mapIsEmpty!34138 mapRes!34138))

(declare-fun mapNonEmpty!34138 () Bool)

(declare-fun tp!65068 () Bool)

(declare-fun e!542038 () Bool)

(assert (=> mapNonEmpty!34138 (= mapRes!34138 (and tp!65068 e!542038))))

(declare-datatypes ((V!33555 0))(
  ( (V!33556 (val!10765 Int)) )
))
(declare-datatypes ((ValueCell!10233 0))(
  ( (ValueCellFull!10233 (v!13323 V!33555)) (EmptyCell!10233) )
))
(declare-fun mapValue!34138 () ValueCell!10233)

(declare-datatypes ((array!58955 0))(
  ( (array!58956 (arr!28342 (Array (_ BitVec 32) ValueCell!10233)) (size!28822 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58955)

(declare-fun mapRest!34138 () (Array (_ BitVec 32) ValueCell!10233))

(declare-fun mapKey!34138 () (_ BitVec 32))

(assert (=> mapNonEmpty!34138 (= (arr!28342 _values!1400) (store mapRest!34138 mapKey!34138 mapValue!34138))))

(declare-fun b!961274 () Bool)

(declare-fun tp_is_empty!21429 () Bool)

(assert (=> b!961274 (= e!542038 tp_is_empty!21429)))

(declare-fun res!643479 () Bool)

(declare-fun e!542035 () Bool)

(assert (=> start!82522 (=> (not res!643479) (not e!542035))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82522 (= res!643479 (validMask!0 mask!2110))))

(assert (=> start!82522 e!542035))

(assert (=> start!82522 true))

(declare-fun e!542034 () Bool)

(declare-fun array_inv!21891 (array!58955) Bool)

(assert (=> start!82522 (and (array_inv!21891 _values!1400) e!542034)))

(declare-datatypes ((array!58957 0))(
  ( (array!58958 (arr!28343 (Array (_ BitVec 32) (_ BitVec 64))) (size!28823 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58957)

(declare-fun array_inv!21892 (array!58957) Bool)

(assert (=> start!82522 (array_inv!21892 _keys!1686)))

(declare-fun b!961275 () Bool)

(declare-fun res!643481 () Bool)

(assert (=> b!961275 (=> (not res!643481) (not e!542035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58957 (_ BitVec 32)) Bool)

(assert (=> b!961275 (= res!643481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961276 () Bool)

(declare-fun e!542037 () Bool)

(assert (=> b!961276 (= e!542034 (and e!542037 mapRes!34138))))

(declare-fun condMapEmpty!34138 () Bool)

(declare-fun mapDefault!34138 () ValueCell!10233)

(assert (=> b!961276 (= condMapEmpty!34138 (= (arr!28342 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10233)) mapDefault!34138)))))

(declare-fun b!961277 () Bool)

(assert (=> b!961277 (= e!542037 tp_is_empty!21429)))

(declare-fun b!961278 () Bool)

(declare-fun res!643480 () Bool)

(assert (=> b!961278 (=> (not res!643480) (not e!542035))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961278 (= res!643480 (and (= (size!28822 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28823 _keys!1686) (size!28822 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961279 () Bool)

(assert (=> b!961279 (= e!542035 false)))

(declare-fun lt!430698 () Bool)

(declare-datatypes ((List!19809 0))(
  ( (Nil!19806) (Cons!19805 (h!20967 (_ BitVec 64)) (t!28180 List!19809)) )
))
(declare-fun arrayNoDuplicates!0 (array!58957 (_ BitVec 32) List!19809) Bool)

(assert (=> b!961279 (= lt!430698 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19806))))

(assert (= (and start!82522 res!643479) b!961278))

(assert (= (and b!961278 res!643480) b!961275))

(assert (= (and b!961275 res!643481) b!961279))

(assert (= (and b!961276 condMapEmpty!34138) mapIsEmpty!34138))

(assert (= (and b!961276 (not condMapEmpty!34138)) mapNonEmpty!34138))

(get-info :version)

(assert (= (and mapNonEmpty!34138 ((_ is ValueCellFull!10233) mapValue!34138)) b!961274))

(assert (= (and b!961276 ((_ is ValueCellFull!10233) mapDefault!34138)) b!961277))

(assert (= start!82522 b!961276))

(declare-fun m!891337 () Bool)

(assert (=> mapNonEmpty!34138 m!891337))

(declare-fun m!891339 () Bool)

(assert (=> start!82522 m!891339))

(declare-fun m!891341 () Bool)

(assert (=> start!82522 m!891341))

(declare-fun m!891343 () Bool)

(assert (=> start!82522 m!891343))

(declare-fun m!891345 () Bool)

(assert (=> b!961275 m!891345))

(declare-fun m!891347 () Bool)

(assert (=> b!961279 m!891347))

(check-sat tp_is_empty!21429 (not b!961275) (not b!961279) (not mapNonEmpty!34138) (not start!82522))
(check-sat)
