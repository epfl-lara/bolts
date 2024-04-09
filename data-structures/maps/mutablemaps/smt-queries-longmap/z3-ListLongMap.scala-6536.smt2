; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83130 () Bool)

(assert start!83130)

(declare-fun res!648832 () Bool)

(declare-fun e!546461 () Bool)

(assert (=> start!83130 (=> (not res!648832) (not e!546461))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83130 (= res!648832 (validMask!0 mask!2147))))

(assert (=> start!83130 e!546461))

(assert (=> start!83130 true))

(declare-datatypes ((V!34307 0))(
  ( (V!34308 (val!11047 Int)) )
))
(declare-datatypes ((ValueCell!10515 0))(
  ( (ValueCellFull!10515 (v!13606 V!34307)) (EmptyCell!10515) )
))
(declare-datatypes ((array!60033 0))(
  ( (array!60034 (arr!28876 (Array (_ BitVec 32) ValueCell!10515)) (size!29356 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60033)

(declare-fun e!546462 () Bool)

(declare-fun array_inv!22247 (array!60033) Bool)

(assert (=> start!83130 (and (array_inv!22247 _values!1425) e!546462)))

(declare-datatypes ((array!60035 0))(
  ( (array!60036 (arr!28877 (Array (_ BitVec 32) (_ BitVec 64))) (size!29357 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60035)

(declare-fun array_inv!22248 (array!60035) Bool)

(assert (=> start!83130 (array_inv!22248 _keys!1717)))

(declare-fun mapIsEmpty!34999 () Bool)

(declare-fun mapRes!34999 () Bool)

(assert (=> mapIsEmpty!34999 mapRes!34999))

(declare-fun b!969227 () Bool)

(declare-fun res!648830 () Bool)

(assert (=> b!969227 (=> (not res!648830) (not e!546461))))

(declare-datatypes ((List!20142 0))(
  ( (Nil!20139) (Cons!20138 (h!21300 (_ BitVec 64)) (t!28513 List!20142)) )
))
(declare-fun arrayNoDuplicates!0 (array!60035 (_ BitVec 32) List!20142) Bool)

(assert (=> b!969227 (= res!648830 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20139))))

(declare-fun b!969228 () Bool)

(declare-fun e!546458 () Bool)

(declare-fun tp_is_empty!21993 () Bool)

(assert (=> b!969228 (= e!546458 tp_is_empty!21993)))

(declare-fun b!969229 () Bool)

(declare-fun res!648834 () Bool)

(assert (=> b!969229 (=> (not res!648834) (not e!546461))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969229 (= res!648834 (and (= (size!29356 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29357 _keys!1717) (size!29356 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969230 () Bool)

(declare-fun e!546460 () Bool)

(assert (=> b!969230 (= e!546460 tp_is_empty!21993)))

(declare-fun mapNonEmpty!34999 () Bool)

(declare-fun tp!66568 () Bool)

(assert (=> mapNonEmpty!34999 (= mapRes!34999 (and tp!66568 e!546458))))

(declare-fun mapKey!34999 () (_ BitVec 32))

(declare-fun mapValue!34999 () ValueCell!10515)

(declare-fun mapRest!34999 () (Array (_ BitVec 32) ValueCell!10515))

(assert (=> mapNonEmpty!34999 (= (arr!28876 _values!1425) (store mapRest!34999 mapKey!34999 mapValue!34999))))

(declare-fun b!969231 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969231 (= e!546461 (or (bvslt from!2118 #b00000000000000000000000000000000) (bvsgt from!2118 (size!29357 _keys!1717))))))

(declare-fun b!969232 () Bool)

(declare-fun res!648831 () Bool)

(assert (=> b!969232 (=> (not res!648831) (not e!546461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60035 (_ BitVec 32)) Bool)

(assert (=> b!969232 (= res!648831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969233 () Bool)

(declare-fun res!648835 () Bool)

(assert (=> b!969233 (=> (not res!648835) (not e!546461))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969233 (= res!648835 (validKeyInArray!0 (select (arr!28877 _keys!1717) i!822)))))

(declare-fun b!969234 () Bool)

(declare-fun res!648833 () Bool)

(assert (=> b!969234 (=> (not res!648833) (not e!546461))))

(assert (=> b!969234 (= res!648833 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29357 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29357 _keys!1717))))))

(declare-fun b!969235 () Bool)

(assert (=> b!969235 (= e!546462 (and e!546460 mapRes!34999))))

(declare-fun condMapEmpty!34999 () Bool)

(declare-fun mapDefault!34999 () ValueCell!10515)

(assert (=> b!969235 (= condMapEmpty!34999 (= (arr!28876 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10515)) mapDefault!34999)))))

(assert (= (and start!83130 res!648832) b!969229))

(assert (= (and b!969229 res!648834) b!969232))

(assert (= (and b!969232 res!648831) b!969227))

(assert (= (and b!969227 res!648830) b!969234))

(assert (= (and b!969234 res!648833) b!969233))

(assert (= (and b!969233 res!648835) b!969231))

(assert (= (and b!969235 condMapEmpty!34999) mapIsEmpty!34999))

(assert (= (and b!969235 (not condMapEmpty!34999)) mapNonEmpty!34999))

(get-info :version)

(assert (= (and mapNonEmpty!34999 ((_ is ValueCellFull!10515) mapValue!34999)) b!969228))

(assert (= (and b!969235 ((_ is ValueCellFull!10515) mapDefault!34999)) b!969230))

(assert (= start!83130 b!969235))

(declare-fun m!897351 () Bool)

(assert (=> start!83130 m!897351))

(declare-fun m!897353 () Bool)

(assert (=> start!83130 m!897353))

(declare-fun m!897355 () Bool)

(assert (=> start!83130 m!897355))

(declare-fun m!897357 () Bool)

(assert (=> b!969233 m!897357))

(assert (=> b!969233 m!897357))

(declare-fun m!897359 () Bool)

(assert (=> b!969233 m!897359))

(declare-fun m!897361 () Bool)

(assert (=> mapNonEmpty!34999 m!897361))

(declare-fun m!897363 () Bool)

(assert (=> b!969232 m!897363))

(declare-fun m!897365 () Bool)

(assert (=> b!969227 m!897365))

(check-sat (not b!969233) tp_is_empty!21993 (not b!969227) (not mapNonEmpty!34999) (not start!83130) (not b!969232))
(check-sat)
