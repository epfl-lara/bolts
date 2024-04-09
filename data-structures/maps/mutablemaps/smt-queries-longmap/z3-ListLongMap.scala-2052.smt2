; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35490 () Bool)

(assert start!35490)

(declare-fun b!355407 () Bool)

(declare-fun e!217699 () Bool)

(declare-fun tp_is_empty!7935 () Bool)

(assert (=> b!355407 (= e!217699 tp_is_empty!7935)))

(declare-fun b!355408 () Bool)

(declare-fun res!197263 () Bool)

(declare-fun e!217698 () Bool)

(assert (=> b!355408 (=> (not res!197263) (not e!217698))))

(declare-datatypes ((array!19417 0))(
  ( (array!19418 (arr!9199 (Array (_ BitVec 32) (_ BitVec 64))) (size!9551 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19417)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19417 (_ BitVec 32)) Bool)

(assert (=> b!355408 (= res!197263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!197262 () Bool)

(assert (=> start!35490 (=> (not res!197262) (not e!217698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35490 (= res!197262 (validMask!0 mask!1842))))

(assert (=> start!35490 e!217698))

(assert (=> start!35490 true))

(declare-datatypes ((V!11557 0))(
  ( (V!11558 (val!4012 Int)) )
))
(declare-datatypes ((ValueCell!3624 0))(
  ( (ValueCellFull!3624 (v!6202 V!11557)) (EmptyCell!3624) )
))
(declare-datatypes ((array!19419 0))(
  ( (array!19420 (arr!9200 (Array (_ BitVec 32) ValueCell!3624)) (size!9552 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19419)

(declare-fun e!217696 () Bool)

(declare-fun array_inv!6774 (array!19419) Bool)

(assert (=> start!35490 (and (array_inv!6774 _values!1208) e!217696)))

(declare-fun array_inv!6775 (array!19417) Bool)

(assert (=> start!35490 (array_inv!6775 _keys!1456)))

(declare-fun mapNonEmpty!13410 () Bool)

(declare-fun mapRes!13410 () Bool)

(declare-fun tp!27387 () Bool)

(assert (=> mapNonEmpty!13410 (= mapRes!13410 (and tp!27387 e!217699))))

(declare-fun mapValue!13410 () ValueCell!3624)

(declare-fun mapKey!13410 () (_ BitVec 32))

(declare-fun mapRest!13410 () (Array (_ BitVec 32) ValueCell!3624))

(assert (=> mapNonEmpty!13410 (= (arr!9200 _values!1208) (store mapRest!13410 mapKey!13410 mapValue!13410))))

(declare-fun mapIsEmpty!13410 () Bool)

(assert (=> mapIsEmpty!13410 mapRes!13410))

(declare-fun b!355409 () Bool)

(declare-fun e!217697 () Bool)

(assert (=> b!355409 (= e!217697 tp_is_empty!7935)))

(declare-fun b!355410 () Bool)

(assert (=> b!355410 (= e!217698 false)))

(declare-fun lt!165778 () Bool)

(declare-datatypes ((List!5360 0))(
  ( (Nil!5357) (Cons!5356 (h!6212 (_ BitVec 64)) (t!10518 List!5360)) )
))
(declare-fun arrayNoDuplicates!0 (array!19417 (_ BitVec 32) List!5360) Bool)

(assert (=> b!355410 (= lt!165778 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5357))))

(declare-fun b!355411 () Bool)

(assert (=> b!355411 (= e!217696 (and e!217697 mapRes!13410))))

(declare-fun condMapEmpty!13410 () Bool)

(declare-fun mapDefault!13410 () ValueCell!3624)

(assert (=> b!355411 (= condMapEmpty!13410 (= (arr!9200 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3624)) mapDefault!13410)))))

(declare-fun b!355412 () Bool)

(declare-fun res!197261 () Bool)

(assert (=> b!355412 (=> (not res!197261) (not e!217698))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355412 (= res!197261 (and (= (size!9552 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9551 _keys!1456) (size!9552 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35490 res!197262) b!355412))

(assert (= (and b!355412 res!197261) b!355408))

(assert (= (and b!355408 res!197263) b!355410))

(assert (= (and b!355411 condMapEmpty!13410) mapIsEmpty!13410))

(assert (= (and b!355411 (not condMapEmpty!13410)) mapNonEmpty!13410))

(get-info :version)

(assert (= (and mapNonEmpty!13410 ((_ is ValueCellFull!3624) mapValue!13410)) b!355407))

(assert (= (and b!355411 ((_ is ValueCellFull!3624) mapDefault!13410)) b!355409))

(assert (= start!35490 b!355411))

(declare-fun m!354129 () Bool)

(assert (=> b!355408 m!354129))

(declare-fun m!354131 () Bool)

(assert (=> start!35490 m!354131))

(declare-fun m!354133 () Bool)

(assert (=> start!35490 m!354133))

(declare-fun m!354135 () Bool)

(assert (=> start!35490 m!354135))

(declare-fun m!354137 () Bool)

(assert (=> mapNonEmpty!13410 m!354137))

(declare-fun m!354139 () Bool)

(assert (=> b!355410 m!354139))

(check-sat (not b!355410) (not b!355408) (not start!35490) (not mapNonEmpty!13410) tp_is_empty!7935)
(check-sat)
