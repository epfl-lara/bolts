; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!836 () Bool)

(assert start!836)

(declare-fun b_free!229 () Bool)

(declare-fun b_next!229 () Bool)

(assert (=> start!836 (= b_free!229 (not b_next!229))))

(declare-fun tp!916 () Bool)

(declare-fun b_and!375 () Bool)

(assert (=> start!836 (= tp!916 b_and!375)))

(declare-fun b!6626 () Bool)

(declare-fun res!6934 () Bool)

(declare-fun e!3654 () Bool)

(assert (=> b!6626 (=> (not res!6934) (not e!3654))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!587 0))(
  ( (V!588 (val!159 Int)) )
))
(declare-datatypes ((ValueCell!137 0))(
  ( (ValueCellFull!137 (v!1250 V!587)) (EmptyCell!137) )
))
(declare-datatypes ((array!547 0))(
  ( (array!548 (arr!262 (Array (_ BitVec 32) ValueCell!137)) (size!324 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!547)

(declare-datatypes ((array!549 0))(
  ( (array!550 (arr!263 (Array (_ BitVec 32) (_ BitVec 64))) (size!325 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!549)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6626 (= res!6934 (and (= (size!324 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!325 _keys!1806) (size!324 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6627 () Bool)

(declare-fun res!6935 () Bool)

(assert (=> b!6627 (=> (not res!6935) (not e!3654))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6627 (= res!6935 (validKeyInArray!0 k!1278))))

(declare-fun b!6628 () Bool)

(declare-fun res!6940 () Bool)

(assert (=> b!6628 (=> (not res!6940) (not e!3654))))

(declare-datatypes ((List!173 0))(
  ( (Nil!170) (Cons!169 (h!735 (_ BitVec 64)) (t!2308 List!173)) )
))
(declare-fun arrayNoDuplicates!0 (array!549 (_ BitVec 32) List!173) Bool)

(assert (=> b!6628 (= res!6940 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!170))))

(declare-fun mapIsEmpty!431 () Bool)

(declare-fun mapRes!431 () Bool)

(assert (=> mapIsEmpty!431 mapRes!431))

(declare-fun b!6629 () Bool)

(declare-fun e!3658 () Bool)

(assert (=> b!6629 (= e!3658 true)))

(declare-datatypes ((SeekEntryResult!22 0))(
  ( (MissingZero!22 (index!2207 (_ BitVec 32))) (Found!22 (index!2208 (_ BitVec 32))) (Intermediate!22 (undefined!834 Bool) (index!2209 (_ BitVec 32)) (x!2544 (_ BitVec 32))) (Undefined!22) (MissingVacant!22 (index!2210 (_ BitVec 32))) )
))
(declare-fun lt!1264 () SeekEntryResult!22)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!549 (_ BitVec 32)) SeekEntryResult!22)

(assert (=> b!6629 (= lt!1264 (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250))))

(declare-fun b!6630 () Bool)

(declare-fun e!3657 () Bool)

(assert (=> b!6630 (= e!3657 e!3658)))

(declare-fun res!6938 () Bool)

(assert (=> b!6630 (=> res!6938 e!3658)))

(assert (=> b!6630 (= res!6938 (not (= (size!325 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!549 (_ BitVec 32)) Bool)

(assert (=> b!6630 (arrayForallSeekEntryOrOpenFound!0 lt!1266 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!109 0))(
  ( (Unit!110) )
))
(declare-fun lt!1263 () Unit!109)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!109)

(assert (=> b!6630 (= lt!1263 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1266))))

(declare-fun arrayScanForKey!0 (array!549 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6630 (= lt!1266 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6631 () Bool)

(declare-fun res!6937 () Bool)

(assert (=> b!6631 (=> (not res!6937) (not e!3654))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!587)

(declare-fun zeroValue!1434 () V!587)

(declare-datatypes ((tuple2!158 0))(
  ( (tuple2!159 (_1!79 (_ BitVec 64)) (_2!79 V!587)) )
))
(declare-datatypes ((List!174 0))(
  ( (Nil!171) (Cons!170 (h!736 tuple2!158) (t!2309 List!174)) )
))
(declare-datatypes ((ListLongMap!163 0))(
  ( (ListLongMap!164 (toList!97 List!174)) )
))
(declare-fun contains!71 (ListLongMap!163 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!56 (array!549 array!547 (_ BitVec 32) (_ BitVec 32) V!587 V!587 (_ BitVec 32) Int) ListLongMap!163)

(assert (=> b!6631 (= res!6937 (contains!71 (getCurrentListMap!56 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6632 () Bool)

(declare-fun e!3652 () Bool)

(declare-fun tp_is_empty!307 () Bool)

(assert (=> b!6632 (= e!3652 tp_is_empty!307)))

(declare-fun b!6633 () Bool)

(declare-fun e!3659 () Bool)

(assert (=> b!6633 (= e!3659 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!431 () Bool)

(declare-fun tp!917 () Bool)

(declare-fun e!3655 () Bool)

(assert (=> mapNonEmpty!431 (= mapRes!431 (and tp!917 e!3655))))

(declare-fun mapValue!431 () ValueCell!137)

(declare-fun mapKey!431 () (_ BitVec 32))

(declare-fun mapRest!431 () (Array (_ BitVec 32) ValueCell!137))

(assert (=> mapNonEmpty!431 (= (arr!262 _values!1492) (store mapRest!431 mapKey!431 mapValue!431))))

(declare-fun b!6634 () Bool)

(declare-fun res!6933 () Bool)

(assert (=> b!6634 (=> (not res!6933) (not e!3654))))

(assert (=> b!6634 (= res!6933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6635 () Bool)

(assert (=> b!6635 (= e!3654 (not e!3657))))

(declare-fun res!6936 () Bool)

(assert (=> b!6635 (=> res!6936 e!3657)))

(declare-fun arrayContainsKey!0 (array!549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6635 (= res!6936 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6635 e!3659))

(declare-fun c!476 () Bool)

(assert (=> b!6635 (= c!476 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1265 () Unit!109)

(declare-fun lemmaKeyInListMapIsInArray!39 (array!549 array!547 (_ BitVec 32) (_ BitVec 32) V!587 V!587 (_ BitVec 64) Int) Unit!109)

(assert (=> b!6635 (= lt!1265 (lemmaKeyInListMapIsInArray!39 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun res!6939 () Bool)

(assert (=> start!836 (=> (not res!6939) (not e!3654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!836 (= res!6939 (validMask!0 mask!2250))))

(assert (=> start!836 e!3654))

(assert (=> start!836 tp!916))

(assert (=> start!836 true))

(declare-fun e!3653 () Bool)

(declare-fun array_inv!187 (array!547) Bool)

(assert (=> start!836 (and (array_inv!187 _values!1492) e!3653)))

(assert (=> start!836 tp_is_empty!307))

(declare-fun array_inv!188 (array!549) Bool)

(assert (=> start!836 (array_inv!188 _keys!1806)))

(declare-fun b!6636 () Bool)

(assert (=> b!6636 (= e!3655 tp_is_empty!307)))

(declare-fun b!6637 () Bool)

(assert (=> b!6637 (= e!3659 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6638 () Bool)

(assert (=> b!6638 (= e!3653 (and e!3652 mapRes!431))))

(declare-fun condMapEmpty!431 () Bool)

(declare-fun mapDefault!431 () ValueCell!137)

