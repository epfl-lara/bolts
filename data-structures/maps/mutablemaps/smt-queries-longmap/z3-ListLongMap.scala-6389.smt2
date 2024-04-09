; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82160 () Bool)

(assert start!82160)

(declare-fun b!957198 () Bool)

(declare-fun e!539556 () Bool)

(declare-fun e!539557 () Bool)

(declare-fun mapRes!33646 () Bool)

(assert (=> b!957198 (= e!539556 (and e!539557 mapRes!33646))))

(declare-fun condMapEmpty!33646 () Bool)

(declare-datatypes ((V!33131 0))(
  ( (V!33132 (val!10606 Int)) )
))
(declare-datatypes ((ValueCell!10074 0))(
  ( (ValueCellFull!10074 (v!13163 V!33131)) (EmptyCell!10074) )
))
(declare-datatypes ((array!58345 0))(
  ( (array!58346 (arr!28042 (Array (_ BitVec 32) ValueCell!10074)) (size!28522 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58345)

(declare-fun mapDefault!33646 () ValueCell!10074)

(assert (=> b!957198 (= condMapEmpty!33646 (= (arr!28042 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10074)) mapDefault!33646)))))

(declare-fun mapNonEmpty!33646 () Bool)

(declare-fun tp!64252 () Bool)

(declare-fun e!539558 () Bool)

(assert (=> mapNonEmpty!33646 (= mapRes!33646 (and tp!64252 e!539558))))

(declare-fun mapKey!33646 () (_ BitVec 32))

(declare-fun mapRest!33646 () (Array (_ BitVec 32) ValueCell!10074))

(declare-fun mapValue!33646 () ValueCell!10074)

(assert (=> mapNonEmpty!33646 (= (arr!28042 _values!1386) (store mapRest!33646 mapKey!33646 mapValue!33646))))

(declare-fun b!957199 () Bool)

(declare-fun e!539554 () Bool)

(assert (=> b!957199 (= e!539554 false)))

(declare-fun lt!430253 () Bool)

(declare-datatypes ((array!58347 0))(
  ( (array!58348 (arr!28043 (Array (_ BitVec 32) (_ BitVec 64))) (size!28523 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58347)

(declare-datatypes ((List!19645 0))(
  ( (Nil!19642) (Cons!19641 (h!20803 (_ BitVec 64)) (t!28016 List!19645)) )
))
(declare-fun arrayNoDuplicates!0 (array!58347 (_ BitVec 32) List!19645) Bool)

(assert (=> b!957199 (= lt!430253 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19642))))

(declare-fun b!957200 () Bool)

(declare-fun res!640897 () Bool)

(assert (=> b!957200 (=> (not res!640897) (not e!539554))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58347 (_ BitVec 32)) Bool)

(assert (=> b!957200 (= res!640897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!33646 () Bool)

(assert (=> mapIsEmpty!33646 mapRes!33646))

(declare-fun b!957201 () Bool)

(declare-fun tp_is_empty!21111 () Bool)

(assert (=> b!957201 (= e!539557 tp_is_empty!21111)))

(declare-fun b!957202 () Bool)

(assert (=> b!957202 (= e!539558 tp_is_empty!21111)))

(declare-fun b!957197 () Bool)

(declare-fun res!640899 () Bool)

(assert (=> b!957197 (=> (not res!640899) (not e!539554))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957197 (= res!640899 (and (= (size!28522 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28523 _keys!1668) (size!28522 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!640898 () Bool)

(assert (=> start!82160 (=> (not res!640898) (not e!539554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82160 (= res!640898 (validMask!0 mask!2088))))

(assert (=> start!82160 e!539554))

(assert (=> start!82160 true))

(declare-fun array_inv!21699 (array!58345) Bool)

(assert (=> start!82160 (and (array_inv!21699 _values!1386) e!539556)))

(declare-fun array_inv!21700 (array!58347) Bool)

(assert (=> start!82160 (array_inv!21700 _keys!1668)))

(assert (= (and start!82160 res!640898) b!957197))

(assert (= (and b!957197 res!640899) b!957200))

(assert (= (and b!957200 res!640897) b!957199))

(assert (= (and b!957198 condMapEmpty!33646) mapIsEmpty!33646))

(assert (= (and b!957198 (not condMapEmpty!33646)) mapNonEmpty!33646))

(get-info :version)

(assert (= (and mapNonEmpty!33646 ((_ is ValueCellFull!10074) mapValue!33646)) b!957202))

(assert (= (and b!957198 ((_ is ValueCellFull!10074) mapDefault!33646)) b!957201))

(assert (= start!82160 b!957198))

(declare-fun m!888309 () Bool)

(assert (=> mapNonEmpty!33646 m!888309))

(declare-fun m!888311 () Bool)

(assert (=> b!957199 m!888311))

(declare-fun m!888313 () Bool)

(assert (=> b!957200 m!888313))

(declare-fun m!888315 () Bool)

(assert (=> start!82160 m!888315))

(declare-fun m!888317 () Bool)

(assert (=> start!82160 m!888317))

(declare-fun m!888319 () Bool)

(assert (=> start!82160 m!888319))

(check-sat tp_is_empty!21111 (not b!957199) (not start!82160) (not mapNonEmpty!33646) (not b!957200))
(check-sat)
