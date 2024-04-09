; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77510 () Bool)

(assert start!77510)

(declare-fun res!609269 () Bool)

(declare-fun e!505747 () Bool)

(assert (=> start!77510 (=> (not res!609269) (not e!505747))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77510 (= res!609269 (validMask!0 mask!1756))))

(assert (=> start!77510 e!505747))

(assert (=> start!77510 true))

(declare-datatypes ((V!29625 0))(
  ( (V!29626 (val!9298 Int)) )
))
(declare-datatypes ((ValueCell!8766 0))(
  ( (ValueCellFull!8766 (v!11803 V!29625)) (EmptyCell!8766) )
))
(declare-datatypes ((array!53036 0))(
  ( (array!53037 (arr!25474 (Array (_ BitVec 32) ValueCell!8766)) (size!25934 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53036)

(declare-fun e!505750 () Bool)

(declare-fun array_inv!19944 (array!53036) Bool)

(assert (=> start!77510 (and (array_inv!19944 _values!1152) e!505750)))

(declare-datatypes ((array!53038 0))(
  ( (array!53039 (arr!25475 (Array (_ BitVec 32) (_ BitVec 64))) (size!25935 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53038)

(declare-fun array_inv!19945 (array!53038) Bool)

(assert (=> start!77510 (array_inv!19945 _keys!1386)))

(declare-fun b!902770 () Bool)

(declare-fun res!609270 () Bool)

(assert (=> b!902770 (=> (not res!609270) (not e!505747))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902770 (= res!609270 (and (= (size!25934 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25935 _keys!1386) (size!25934 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902771 () Bool)

(assert (=> b!902771 (= e!505747 false)))

(declare-fun lt!407882 () Bool)

(declare-datatypes ((List!17977 0))(
  ( (Nil!17974) (Cons!17973 (h!19119 (_ BitVec 64)) (t!25368 List!17977)) )
))
(declare-fun arrayNoDuplicates!0 (array!53038 (_ BitVec 32) List!17977) Bool)

(assert (=> b!902771 (= lt!407882 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17974))))

(declare-fun mapIsEmpty!29452 () Bool)

(declare-fun mapRes!29452 () Bool)

(assert (=> mapIsEmpty!29452 mapRes!29452))

(declare-fun b!902772 () Bool)

(declare-fun e!505749 () Bool)

(declare-fun tp_is_empty!18495 () Bool)

(assert (=> b!902772 (= e!505749 tp_is_empty!18495)))

(declare-fun mapNonEmpty!29452 () Bool)

(declare-fun tp!56512 () Bool)

(assert (=> mapNonEmpty!29452 (= mapRes!29452 (and tp!56512 e!505749))))

(declare-fun mapValue!29452 () ValueCell!8766)

(declare-fun mapKey!29452 () (_ BitVec 32))

(declare-fun mapRest!29452 () (Array (_ BitVec 32) ValueCell!8766))

(assert (=> mapNonEmpty!29452 (= (arr!25474 _values!1152) (store mapRest!29452 mapKey!29452 mapValue!29452))))

(declare-fun b!902773 () Bool)

(declare-fun e!505748 () Bool)

(assert (=> b!902773 (= e!505748 tp_is_empty!18495)))

(declare-fun b!902774 () Bool)

(assert (=> b!902774 (= e!505750 (and e!505748 mapRes!29452))))

(declare-fun condMapEmpty!29452 () Bool)

(declare-fun mapDefault!29452 () ValueCell!8766)

(assert (=> b!902774 (= condMapEmpty!29452 (= (arr!25474 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8766)) mapDefault!29452)))))

(declare-fun b!902775 () Bool)

(declare-fun res!609268 () Bool)

(assert (=> b!902775 (=> (not res!609268) (not e!505747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53038 (_ BitVec 32)) Bool)

(assert (=> b!902775 (= res!609268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77510 res!609269) b!902770))

(assert (= (and b!902770 res!609270) b!902775))

(assert (= (and b!902775 res!609268) b!902771))

(assert (= (and b!902774 condMapEmpty!29452) mapIsEmpty!29452))

(assert (= (and b!902774 (not condMapEmpty!29452)) mapNonEmpty!29452))

(get-info :version)

(assert (= (and mapNonEmpty!29452 ((_ is ValueCellFull!8766) mapValue!29452)) b!902772))

(assert (= (and b!902774 ((_ is ValueCellFull!8766) mapDefault!29452)) b!902773))

(assert (= start!77510 b!902774))

(declare-fun m!838715 () Bool)

(assert (=> start!77510 m!838715))

(declare-fun m!838717 () Bool)

(assert (=> start!77510 m!838717))

(declare-fun m!838719 () Bool)

(assert (=> start!77510 m!838719))

(declare-fun m!838721 () Bool)

(assert (=> b!902771 m!838721))

(declare-fun m!838723 () Bool)

(assert (=> mapNonEmpty!29452 m!838723))

(declare-fun m!838725 () Bool)

(assert (=> b!902775 m!838725))

(check-sat tp_is_empty!18495 (not b!902771) (not start!77510) (not mapNonEmpty!29452) (not b!902775))
(check-sat)
