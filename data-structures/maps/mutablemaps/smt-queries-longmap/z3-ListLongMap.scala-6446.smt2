; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82546 () Bool)

(assert start!82546)

(declare-fun b!961490 () Bool)

(declare-fun e!542216 () Bool)

(declare-fun tp_is_empty!21453 () Bool)

(assert (=> b!961490 (= e!542216 tp_is_empty!21453)))

(declare-fun b!961491 () Bool)

(declare-fun res!643588 () Bool)

(declare-fun e!542217 () Bool)

(assert (=> b!961491 (=> (not res!643588) (not e!542217))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33587 0))(
  ( (V!33588 (val!10777 Int)) )
))
(declare-datatypes ((ValueCell!10245 0))(
  ( (ValueCellFull!10245 (v!13335 V!33587)) (EmptyCell!10245) )
))
(declare-datatypes ((array!58997 0))(
  ( (array!58998 (arr!28363 (Array (_ BitVec 32) ValueCell!10245)) (size!28843 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58997)

(declare-datatypes ((array!58999 0))(
  ( (array!59000 (arr!28364 (Array (_ BitVec 32) (_ BitVec 64))) (size!28844 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58999)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961491 (= res!643588 (and (= (size!28843 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28844 _keys!1686) (size!28843 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961492 () Bool)

(declare-fun e!542215 () Bool)

(declare-fun e!542214 () Bool)

(declare-fun mapRes!34174 () Bool)

(assert (=> b!961492 (= e!542215 (and e!542214 mapRes!34174))))

(declare-fun condMapEmpty!34174 () Bool)

(declare-fun mapDefault!34174 () ValueCell!10245)

(assert (=> b!961492 (= condMapEmpty!34174 (= (arr!28363 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10245)) mapDefault!34174)))))

(declare-fun mapNonEmpty!34174 () Bool)

(declare-fun tp!65104 () Bool)

(assert (=> mapNonEmpty!34174 (= mapRes!34174 (and tp!65104 e!542216))))

(declare-fun mapKey!34174 () (_ BitVec 32))

(declare-fun mapValue!34174 () ValueCell!10245)

(declare-fun mapRest!34174 () (Array (_ BitVec 32) ValueCell!10245))

(assert (=> mapNonEmpty!34174 (= (arr!28363 _values!1400) (store mapRest!34174 mapKey!34174 mapValue!34174))))

(declare-fun mapIsEmpty!34174 () Bool)

(assert (=> mapIsEmpty!34174 mapRes!34174))

(declare-fun b!961493 () Bool)

(assert (=> b!961493 (= e!542214 tp_is_empty!21453)))

(declare-fun res!643589 () Bool)

(assert (=> start!82546 (=> (not res!643589) (not e!542217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82546 (= res!643589 (validMask!0 mask!2110))))

(assert (=> start!82546 e!542217))

(assert (=> start!82546 true))

(declare-fun array_inv!21905 (array!58997) Bool)

(assert (=> start!82546 (and (array_inv!21905 _values!1400) e!542215)))

(declare-fun array_inv!21906 (array!58999) Bool)

(assert (=> start!82546 (array_inv!21906 _keys!1686)))

(declare-fun b!961494 () Bool)

(declare-fun res!643587 () Bool)

(assert (=> b!961494 (=> (not res!643587) (not e!542217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58999 (_ BitVec 32)) Bool)

(assert (=> b!961494 (= res!643587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961495 () Bool)

(assert (=> b!961495 (= e!542217 false)))

(declare-fun lt!430734 () Bool)

(declare-datatypes ((List!19816 0))(
  ( (Nil!19813) (Cons!19812 (h!20974 (_ BitVec 64)) (t!28187 List!19816)) )
))
(declare-fun arrayNoDuplicates!0 (array!58999 (_ BitVec 32) List!19816) Bool)

(assert (=> b!961495 (= lt!430734 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19813))))

(assert (= (and start!82546 res!643589) b!961491))

(assert (= (and b!961491 res!643588) b!961494))

(assert (= (and b!961494 res!643587) b!961495))

(assert (= (and b!961492 condMapEmpty!34174) mapIsEmpty!34174))

(assert (= (and b!961492 (not condMapEmpty!34174)) mapNonEmpty!34174))

(get-info :version)

(assert (= (and mapNonEmpty!34174 ((_ is ValueCellFull!10245) mapValue!34174)) b!961490))

(assert (= (and b!961492 ((_ is ValueCellFull!10245) mapDefault!34174)) b!961493))

(assert (= start!82546 b!961492))

(declare-fun m!891481 () Bool)

(assert (=> mapNonEmpty!34174 m!891481))

(declare-fun m!891483 () Bool)

(assert (=> start!82546 m!891483))

(declare-fun m!891485 () Bool)

(assert (=> start!82546 m!891485))

(declare-fun m!891487 () Bool)

(assert (=> start!82546 m!891487))

(declare-fun m!891489 () Bool)

(assert (=> b!961494 m!891489))

(declare-fun m!891491 () Bool)

(assert (=> b!961495 m!891491))

(check-sat tp_is_empty!21453 (not start!82546) (not b!961494) (not mapNonEmpty!34174) (not b!961495))
(check-sat)
