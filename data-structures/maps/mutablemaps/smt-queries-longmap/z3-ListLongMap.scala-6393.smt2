; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82184 () Bool)

(assert start!82184)

(declare-fun b!957414 () Bool)

(declare-fun e!539734 () Bool)

(declare-fun e!539738 () Bool)

(declare-fun mapRes!33682 () Bool)

(assert (=> b!957414 (= e!539734 (and e!539738 mapRes!33682))))

(declare-fun condMapEmpty!33682 () Bool)

(declare-datatypes ((V!33163 0))(
  ( (V!33164 (val!10618 Int)) )
))
(declare-datatypes ((ValueCell!10086 0))(
  ( (ValueCellFull!10086 (v!13175 V!33163)) (EmptyCell!10086) )
))
(declare-datatypes ((array!58389 0))(
  ( (array!58390 (arr!28064 (Array (_ BitVec 32) ValueCell!10086)) (size!28544 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58389)

(declare-fun mapDefault!33682 () ValueCell!10086)

(assert (=> b!957414 (= condMapEmpty!33682 (= (arr!28064 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10086)) mapDefault!33682)))))

(declare-fun b!957415 () Bool)

(declare-fun e!539737 () Bool)

(assert (=> b!957415 (= e!539737 false)))

(declare-fun lt!430289 () Bool)

(declare-datatypes ((array!58391 0))(
  ( (array!58392 (arr!28065 (Array (_ BitVec 32) (_ BitVec 64))) (size!28545 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58391)

(declare-datatypes ((List!19653 0))(
  ( (Nil!19650) (Cons!19649 (h!20811 (_ BitVec 64)) (t!28024 List!19653)) )
))
(declare-fun arrayNoDuplicates!0 (array!58391 (_ BitVec 32) List!19653) Bool)

(assert (=> b!957415 (= lt!430289 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19650))))

(declare-fun mapNonEmpty!33682 () Bool)

(declare-fun tp!64288 () Bool)

(declare-fun e!539736 () Bool)

(assert (=> mapNonEmpty!33682 (= mapRes!33682 (and tp!64288 e!539736))))

(declare-fun mapValue!33682 () ValueCell!10086)

(declare-fun mapRest!33682 () (Array (_ BitVec 32) ValueCell!10086))

(declare-fun mapKey!33682 () (_ BitVec 32))

(assert (=> mapNonEmpty!33682 (= (arr!28064 _values!1386) (store mapRest!33682 mapKey!33682 mapValue!33682))))

(declare-fun mapIsEmpty!33682 () Bool)

(assert (=> mapIsEmpty!33682 mapRes!33682))

(declare-fun b!957416 () Bool)

(declare-fun tp_is_empty!21135 () Bool)

(assert (=> b!957416 (= e!539738 tp_is_empty!21135)))

(declare-fun res!641006 () Bool)

(assert (=> start!82184 (=> (not res!641006) (not e!539737))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82184 (= res!641006 (validMask!0 mask!2088))))

(assert (=> start!82184 e!539737))

(assert (=> start!82184 true))

(declare-fun array_inv!21715 (array!58389) Bool)

(assert (=> start!82184 (and (array_inv!21715 _values!1386) e!539734)))

(declare-fun array_inv!21716 (array!58391) Bool)

(assert (=> start!82184 (array_inv!21716 _keys!1668)))

(declare-fun b!957413 () Bool)

(declare-fun res!641007 () Bool)

(assert (=> b!957413 (=> (not res!641007) (not e!539737))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957413 (= res!641007 (and (= (size!28544 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28545 _keys!1668) (size!28544 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957417 () Bool)

(declare-fun res!641005 () Bool)

(assert (=> b!957417 (=> (not res!641005) (not e!539737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58391 (_ BitVec 32)) Bool)

(assert (=> b!957417 (= res!641005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957418 () Bool)

(assert (=> b!957418 (= e!539736 tp_is_empty!21135)))

(assert (= (and start!82184 res!641006) b!957413))

(assert (= (and b!957413 res!641007) b!957417))

(assert (= (and b!957417 res!641005) b!957415))

(assert (= (and b!957414 condMapEmpty!33682) mapIsEmpty!33682))

(assert (= (and b!957414 (not condMapEmpty!33682)) mapNonEmpty!33682))

(get-info :version)

(assert (= (and mapNonEmpty!33682 ((_ is ValueCellFull!10086) mapValue!33682)) b!957418))

(assert (= (and b!957414 ((_ is ValueCellFull!10086) mapDefault!33682)) b!957416))

(assert (= start!82184 b!957414))

(declare-fun m!888453 () Bool)

(assert (=> b!957415 m!888453))

(declare-fun m!888455 () Bool)

(assert (=> mapNonEmpty!33682 m!888455))

(declare-fun m!888457 () Bool)

(assert (=> start!82184 m!888457))

(declare-fun m!888459 () Bool)

(assert (=> start!82184 m!888459))

(declare-fun m!888461 () Bool)

(assert (=> start!82184 m!888461))

(declare-fun m!888463 () Bool)

(assert (=> b!957417 m!888463))

(check-sat (not b!957417) (not start!82184) (not mapNonEmpty!33682) tp_is_empty!21135 (not b!957415))
(check-sat)
