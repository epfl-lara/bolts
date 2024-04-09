; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131900 () Bool)

(assert start!131900)

(declare-fun mapNonEmpty!58489 () Bool)

(declare-fun mapRes!58489 () Bool)

(declare-fun tp!111017 () Bool)

(declare-fun e!859191 () Bool)

(assert (=> mapNonEmpty!58489 (= mapRes!58489 (and tp!111017 e!859191))))

(declare-datatypes ((V!58919 0))(
  ( (V!58920 (val!19006 Int)) )
))
(declare-datatypes ((ValueCell!18018 0))(
  ( (ValueCellFull!18018 (v!21804 V!58919)) (EmptyCell!18018) )
))
(declare-datatypes ((array!102889 0))(
  ( (array!102890 (arr!49642 (Array (_ BitVec 32) ValueCell!18018)) (size!50193 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102889)

(declare-fun mapValue!58489 () ValueCell!18018)

(declare-fun mapKey!58489 () (_ BitVec 32))

(declare-fun mapRest!58489 () (Array (_ BitVec 32) ValueCell!18018))

(assert (=> mapNonEmpty!58489 (= (arr!49642 _values!470) (store mapRest!58489 mapKey!58489 mapValue!58489))))

(declare-fun b!1543640 () Bool)

(declare-fun e!859192 () Bool)

(declare-fun e!859190 () Bool)

(assert (=> b!1543640 (= e!859192 (and e!859190 mapRes!58489))))

(declare-fun condMapEmpty!58489 () Bool)

(declare-fun mapDefault!58489 () ValueCell!18018)

(assert (=> b!1543640 (= condMapEmpty!58489 (= (arr!49642 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18018)) mapDefault!58489)))))

(declare-fun b!1543641 () Bool)

(declare-fun res!1059169 () Bool)

(declare-fun e!859188 () Bool)

(assert (=> b!1543641 (=> (not res!1059169) (not e!859188))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((array!102891 0))(
  ( (array!102892 (arr!49643 (Array (_ BitVec 32) (_ BitVec 64))) (size!50194 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102891)

(assert (=> b!1543641 (= res!1059169 (and (= (size!50193 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50194 _keys!618) (size!50193 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1059168 () Bool)

(assert (=> start!131900 (=> (not res!1059168) (not e!859188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131900 (= res!1059168 (validMask!0 mask!926))))

(assert (=> start!131900 e!859188))

(assert (=> start!131900 true))

(declare-fun array_inv!38539 (array!102889) Bool)

(assert (=> start!131900 (and (array_inv!38539 _values!470) e!859192)))

(declare-fun array_inv!38540 (array!102891) Bool)

(assert (=> start!131900 (array_inv!38540 _keys!618)))

(declare-fun b!1543642 () Bool)

(declare-fun tp_is_empty!37857 () Bool)

(assert (=> b!1543642 (= e!859190 tp_is_empty!37857)))

(declare-fun b!1543643 () Bool)

(declare-fun res!1059170 () Bool)

(assert (=> b!1543643 (=> (not res!1059170) (not e!859188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102891 (_ BitVec 32)) Bool)

(assert (=> b!1543643 (= res!1059170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58489 () Bool)

(assert (=> mapIsEmpty!58489 mapRes!58489))

(declare-fun b!1543644 () Bool)

(assert (=> b!1543644 (= e!859188 false)))

(declare-fun lt!665960 () Bool)

(declare-datatypes ((List!36077 0))(
  ( (Nil!36074) (Cons!36073 (h!37519 (_ BitVec 64)) (t!50778 List!36077)) )
))
(declare-fun arrayNoDuplicates!0 (array!102891 (_ BitVec 32) List!36077) Bool)

(assert (=> b!1543644 (= lt!665960 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36074))))

(declare-fun b!1543645 () Bool)

(assert (=> b!1543645 (= e!859191 tp_is_empty!37857)))

(assert (= (and start!131900 res!1059168) b!1543641))

(assert (= (and b!1543641 res!1059169) b!1543643))

(assert (= (and b!1543643 res!1059170) b!1543644))

(assert (= (and b!1543640 condMapEmpty!58489) mapIsEmpty!58489))

(assert (= (and b!1543640 (not condMapEmpty!58489)) mapNonEmpty!58489))

(get-info :version)

(assert (= (and mapNonEmpty!58489 ((_ is ValueCellFull!18018) mapValue!58489)) b!1543645))

(assert (= (and b!1543640 ((_ is ValueCellFull!18018) mapDefault!58489)) b!1543642))

(assert (= start!131900 b!1543640))

(declare-fun m!1424887 () Bool)

(assert (=> mapNonEmpty!58489 m!1424887))

(declare-fun m!1424889 () Bool)

(assert (=> start!131900 m!1424889))

(declare-fun m!1424891 () Bool)

(assert (=> start!131900 m!1424891))

(declare-fun m!1424893 () Bool)

(assert (=> start!131900 m!1424893))

(declare-fun m!1424895 () Bool)

(assert (=> b!1543643 m!1424895))

(declare-fun m!1424897 () Bool)

(assert (=> b!1543644 m!1424897))

(check-sat (not start!131900) (not b!1543643) (not b!1543644) (not mapNonEmpty!58489) tp_is_empty!37857)
(check-sat)
