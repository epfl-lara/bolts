; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83176 () Bool)

(assert start!83176)

(declare-fun b_free!19141 () Bool)

(declare-fun b_next!19141 () Bool)

(assert (=> start!83176 (= b_free!19141 (not b_next!19141))))

(declare-fun tp!66703 () Bool)

(declare-fun b_and!30647 () Bool)

(assert (=> start!83176 (= tp!66703 b_and!30647)))

(declare-fun b!969848 () Bool)

(declare-fun e!546805 () Bool)

(assert (=> b!969848 (= e!546805 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun lt!431644 () Bool)

(declare-datatypes ((V!34369 0))(
  ( (V!34370 (val!11070 Int)) )
))
(declare-datatypes ((ValueCell!10538 0))(
  ( (ValueCellFull!10538 (v!13629 V!34369)) (EmptyCell!10538) )
))
(declare-datatypes ((array!60123 0))(
  ( (array!60124 (arr!28921 (Array (_ BitVec 32) ValueCell!10538)) (size!29401 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60123)

(declare-fun zeroValue!1367 () V!34369)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34369)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60125 0))(
  ( (array!60126 (arr!28922 (Array (_ BitVec 32) (_ BitVec 64))) (size!29402 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60125)

(declare-datatypes ((tuple2!14280 0))(
  ( (tuple2!14281 (_1!7150 (_ BitVec 64)) (_2!7150 V!34369)) )
))
(declare-datatypes ((List!20173 0))(
  ( (Nil!20170) (Cons!20169 (h!21331 tuple2!14280) (t!28544 List!20173)) )
))
(declare-datatypes ((ListLongMap!12991 0))(
  ( (ListLongMap!12992 (toList!6511 List!20173)) )
))
(declare-fun contains!5566 (ListLongMap!12991 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3696 (array!60125 array!60123 (_ BitVec 32) (_ BitVec 32) V!34369 V!34369 (_ BitVec 32) Int) ListLongMap!12991)

(assert (=> b!969848 (= lt!431644 (contains!5566 (getCurrentListMap!3696 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28922 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35068 () Bool)

(declare-fun mapRes!35068 () Bool)

(assert (=> mapIsEmpty!35068 mapRes!35068))

(declare-fun b!969849 () Bool)

(declare-fun res!649246 () Bool)

(assert (=> b!969849 (=> (not res!649246) (not e!546805))))

(assert (=> b!969849 (= res!649246 (and (= (size!29401 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29402 _keys!1717) (size!29401 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35068 () Bool)

(declare-fun tp!66702 () Bool)

(declare-fun e!546806 () Bool)

(assert (=> mapNonEmpty!35068 (= mapRes!35068 (and tp!66702 e!546806))))

(declare-fun mapValue!35068 () ValueCell!10538)

(declare-fun mapKey!35068 () (_ BitVec 32))

(declare-fun mapRest!35068 () (Array (_ BitVec 32) ValueCell!10538))

(assert (=> mapNonEmpty!35068 (= (arr!28921 _values!1425) (store mapRest!35068 mapKey!35068 mapValue!35068))))

(declare-fun res!649247 () Bool)

(assert (=> start!83176 (=> (not res!649247) (not e!546805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83176 (= res!649247 (validMask!0 mask!2147))))

(assert (=> start!83176 e!546805))

(assert (=> start!83176 true))

(declare-fun e!546803 () Bool)

(declare-fun array_inv!22279 (array!60123) Bool)

(assert (=> start!83176 (and (array_inv!22279 _values!1425) e!546803)))

(declare-fun tp_is_empty!22039 () Bool)

(assert (=> start!83176 tp_is_empty!22039))

(assert (=> start!83176 tp!66703))

(declare-fun array_inv!22280 (array!60125) Bool)

(assert (=> start!83176 (array_inv!22280 _keys!1717)))

(declare-fun b!969850 () Bool)

(declare-fun res!649248 () Bool)

(assert (=> b!969850 (=> (not res!649248) (not e!546805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969850 (= res!649248 (validKeyInArray!0 (select (arr!28922 _keys!1717) i!822)))))

(declare-fun b!969851 () Bool)

(declare-fun res!649245 () Bool)

(assert (=> b!969851 (=> (not res!649245) (not e!546805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60125 (_ BitVec 32)) Bool)

(assert (=> b!969851 (= res!649245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969852 () Bool)

(assert (=> b!969852 (= e!546806 tp_is_empty!22039)))

(declare-fun b!969853 () Bool)

(declare-fun res!649244 () Bool)

(assert (=> b!969853 (=> (not res!649244) (not e!546805))))

(declare-datatypes ((List!20174 0))(
  ( (Nil!20171) (Cons!20170 (h!21332 (_ BitVec 64)) (t!28545 List!20174)) )
))
(declare-fun arrayNoDuplicates!0 (array!60125 (_ BitVec 32) List!20174) Bool)

(assert (=> b!969853 (= res!649244 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20171))))

(declare-fun b!969854 () Bool)

(declare-fun e!546807 () Bool)

(assert (=> b!969854 (= e!546803 (and e!546807 mapRes!35068))))

(declare-fun condMapEmpty!35068 () Bool)

(declare-fun mapDefault!35068 () ValueCell!10538)

