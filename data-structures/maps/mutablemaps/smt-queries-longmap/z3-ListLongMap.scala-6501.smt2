; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82876 () Bool)

(assert start!82876)

(declare-fun b_free!18975 () Bool)

(declare-fun b_next!18975 () Bool)

(assert (=> start!82876 (= b_free!18975 (not b_next!18975))))

(declare-fun tp!66055 () Bool)

(declare-fun b_and!30481 () Bool)

(assert (=> start!82876 (= tp!66055 b_and!30481)))

(declare-fun res!646944 () Bool)

(declare-fun e!544771 () Bool)

(assert (=> start!82876 (=> (not res!646944) (not e!544771))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82876 (= res!646944 (validMask!0 mask!2110))))

(assert (=> start!82876 e!544771))

(assert (=> start!82876 true))

(declare-datatypes ((V!34027 0))(
  ( (V!34028 (val!10942 Int)) )
))
(declare-datatypes ((ValueCell!10410 0))(
  ( (ValueCellFull!10410 (v!13500 V!34027)) (EmptyCell!10410) )
))
(declare-datatypes ((array!59629 0))(
  ( (array!59630 (arr!28679 (Array (_ BitVec 32) ValueCell!10410)) (size!29159 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59629)

(declare-fun e!544772 () Bool)

(declare-fun array_inv!22113 (array!59629) Bool)

(assert (=> start!82876 (and (array_inv!22113 _values!1400) e!544772)))

(declare-datatypes ((array!59631 0))(
  ( (array!59632 (arr!28680 (Array (_ BitVec 32) (_ BitVec 64))) (size!29160 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59631)

(declare-fun array_inv!22114 (array!59631) Bool)

(assert (=> start!82876 (array_inv!22114 _keys!1686)))

(assert (=> start!82876 tp!66055))

(declare-fun tp_is_empty!21783 () Bool)

(assert (=> start!82876 tp_is_empty!21783))

(declare-fun b!966329 () Bool)

(assert (=> b!966329 (= e!544771 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431283 () Bool)

(declare-fun minValue!1342 () V!34027)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34027)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14158 0))(
  ( (tuple2!14159 (_1!7089 (_ BitVec 64)) (_2!7089 V!34027)) )
))
(declare-datatypes ((List!20032 0))(
  ( (Nil!20029) (Cons!20028 (h!21190 tuple2!14158) (t!28403 List!20032)) )
))
(declare-datatypes ((ListLongMap!12869 0))(
  ( (ListLongMap!12870 (toList!6450 List!20032)) )
))
(declare-fun contains!5501 (ListLongMap!12869 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3635 (array!59631 array!59629 (_ BitVec 32) (_ BitVec 32) V!34027 V!34027 (_ BitVec 32) Int) ListLongMap!12869)

(assert (=> b!966329 (= lt!431283 (contains!5501 (getCurrentListMap!3635 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28680 _keys!1686) i!803)))))

(declare-fun b!966330 () Bool)

(declare-fun res!646945 () Bool)

(assert (=> b!966330 (=> (not res!646945) (not e!544771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59631 (_ BitVec 32)) Bool)

(assert (=> b!966330 (= res!646945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34669 () Bool)

(declare-fun mapRes!34669 () Bool)

(declare-fun tp!66054 () Bool)

(declare-fun e!544770 () Bool)

(assert (=> mapNonEmpty!34669 (= mapRes!34669 (and tp!66054 e!544770))))

(declare-fun mapKey!34669 () (_ BitVec 32))

(declare-fun mapValue!34669 () ValueCell!10410)

(declare-fun mapRest!34669 () (Array (_ BitVec 32) ValueCell!10410))

(assert (=> mapNonEmpty!34669 (= (arr!28679 _values!1400) (store mapRest!34669 mapKey!34669 mapValue!34669))))

(declare-fun b!966331 () Bool)

(declare-fun res!646941 () Bool)

(assert (=> b!966331 (=> (not res!646941) (not e!544771))))

(assert (=> b!966331 (= res!646941 (and (= (size!29159 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29160 _keys!1686) (size!29159 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966332 () Bool)

(declare-fun res!646943 () Bool)

(assert (=> b!966332 (=> (not res!646943) (not e!544771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966332 (= res!646943 (validKeyInArray!0 (select (arr!28680 _keys!1686) i!803)))))

(declare-fun b!966333 () Bool)

(declare-fun res!646946 () Bool)

(assert (=> b!966333 (=> (not res!646946) (not e!544771))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966333 (= res!646946 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29160 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29160 _keys!1686))))))

(declare-fun mapIsEmpty!34669 () Bool)

(assert (=> mapIsEmpty!34669 mapRes!34669))

(declare-fun b!966334 () Bool)

(declare-fun e!544774 () Bool)

(assert (=> b!966334 (= e!544774 tp_is_empty!21783)))

(declare-fun b!966335 () Bool)

(assert (=> b!966335 (= e!544770 tp_is_empty!21783)))

(declare-fun b!966336 () Bool)

(declare-fun res!646942 () Bool)

(assert (=> b!966336 (=> (not res!646942) (not e!544771))))

(declare-datatypes ((List!20033 0))(
  ( (Nil!20030) (Cons!20029 (h!21191 (_ BitVec 64)) (t!28404 List!20033)) )
))
(declare-fun arrayNoDuplicates!0 (array!59631 (_ BitVec 32) List!20033) Bool)

(assert (=> b!966336 (= res!646942 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20030))))

(declare-fun b!966337 () Bool)

(assert (=> b!966337 (= e!544772 (and e!544774 mapRes!34669))))

(declare-fun condMapEmpty!34669 () Bool)

(declare-fun mapDefault!34669 () ValueCell!10410)

(assert (=> b!966337 (= condMapEmpty!34669 (= (arr!28679 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10410)) mapDefault!34669)))))

(assert (= (and start!82876 res!646944) b!966331))

(assert (= (and b!966331 res!646941) b!966330))

(assert (= (and b!966330 res!646945) b!966336))

(assert (= (and b!966336 res!646942) b!966333))

(assert (= (and b!966333 res!646946) b!966332))

(assert (= (and b!966332 res!646943) b!966329))

(assert (= (and b!966337 condMapEmpty!34669) mapIsEmpty!34669))

(assert (= (and b!966337 (not condMapEmpty!34669)) mapNonEmpty!34669))

(get-info :version)

(assert (= (and mapNonEmpty!34669 ((_ is ValueCellFull!10410) mapValue!34669)) b!966335))

(assert (= (and b!966337 ((_ is ValueCellFull!10410) mapDefault!34669)) b!966334))

(assert (= start!82876 b!966337))

(declare-fun m!895215 () Bool)

(assert (=> start!82876 m!895215))

(declare-fun m!895217 () Bool)

(assert (=> start!82876 m!895217))

(declare-fun m!895219 () Bool)

(assert (=> start!82876 m!895219))

(declare-fun m!895221 () Bool)

(assert (=> b!966329 m!895221))

(declare-fun m!895223 () Bool)

(assert (=> b!966329 m!895223))

(assert (=> b!966329 m!895221))

(assert (=> b!966329 m!895223))

(declare-fun m!895225 () Bool)

(assert (=> b!966329 m!895225))

(declare-fun m!895227 () Bool)

(assert (=> b!966336 m!895227))

(declare-fun m!895229 () Bool)

(assert (=> mapNonEmpty!34669 m!895229))

(declare-fun m!895231 () Bool)

(assert (=> b!966330 m!895231))

(assert (=> b!966332 m!895223))

(assert (=> b!966332 m!895223))

(declare-fun m!895233 () Bool)

(assert (=> b!966332 m!895233))

(check-sat tp_is_empty!21783 (not start!82876) b_and!30481 (not b!966336) (not b!966329) (not b_next!18975) (not b!966332) (not mapNonEmpty!34669) (not b!966330))
(check-sat b_and!30481 (not b_next!18975))
