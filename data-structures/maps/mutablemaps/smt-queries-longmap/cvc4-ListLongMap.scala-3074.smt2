; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43308 () Bool)

(assert start!43308)

(declare-fun b_free!12167 () Bool)

(declare-fun b_next!12167 () Bool)

(assert (=> start!43308 (= b_free!12167 (not b_next!12167))))

(declare-fun tp!42772 () Bool)

(declare-fun b_and!20937 () Bool)

(assert (=> start!43308 (= tp!42772 b_and!20937)))

(declare-fun b!479525 () Bool)

(declare-fun e!282161 () Bool)

(declare-fun tp_is_empty!13679 () Bool)

(assert (=> b!479525 (= e!282161 tp_is_empty!13679)))

(declare-fun res!286107 () Bool)

(declare-fun e!282160 () Bool)

(assert (=> start!43308 (=> (not res!286107) (not e!282160))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43308 (= res!286107 (validMask!0 mask!2352))))

(assert (=> start!43308 e!282160))

(assert (=> start!43308 true))

(assert (=> start!43308 tp_is_empty!13679))

(declare-datatypes ((V!19309 0))(
  ( (V!19310 (val!6887 Int)) )
))
(declare-datatypes ((ValueCell!6478 0))(
  ( (ValueCellFull!6478 (v!9172 V!19309)) (EmptyCell!6478) )
))
(declare-datatypes ((array!30995 0))(
  ( (array!30996 (arr!14901 (Array (_ BitVec 32) ValueCell!6478)) (size!15259 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30995)

(declare-fun e!282163 () Bool)

(declare-fun array_inv!10734 (array!30995) Bool)

(assert (=> start!43308 (and (array_inv!10734 _values!1516) e!282163)))

(assert (=> start!43308 tp!42772))

(declare-datatypes ((array!30997 0))(
  ( (array!30998 (arr!14902 (Array (_ BitVec 32) (_ BitVec 64))) (size!15260 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30997)

(declare-fun array_inv!10735 (array!30997) Bool)

(assert (=> start!43308 (array_inv!10735 _keys!1874)))

(declare-fun b!479526 () Bool)

(declare-fun res!286105 () Bool)

(assert (=> b!479526 (=> (not res!286105) (not e!282160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30997 (_ BitVec 32)) Bool)

(assert (=> b!479526 (= res!286105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479527 () Bool)

(declare-fun res!286104 () Bool)

(assert (=> b!479527 (=> (not res!286104) (not e!282160))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!479527 (= res!286104 (and (= (size!15259 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15260 _keys!1874) (size!15259 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22216 () Bool)

(declare-fun mapRes!22216 () Bool)

(assert (=> mapIsEmpty!22216 mapRes!22216))

(declare-fun b!479528 () Bool)

(declare-fun e!282159 () Bool)

(assert (=> b!479528 (= e!282159 tp_is_empty!13679)))

(declare-fun mapNonEmpty!22216 () Bool)

(declare-fun tp!42771 () Bool)

(assert (=> mapNonEmpty!22216 (= mapRes!22216 (and tp!42771 e!282159))))

(declare-fun mapKey!22216 () (_ BitVec 32))

(declare-fun mapRest!22216 () (Array (_ BitVec 32) ValueCell!6478))

(declare-fun mapValue!22216 () ValueCell!6478)

(assert (=> mapNonEmpty!22216 (= (arr!14901 _values!1516) (store mapRest!22216 mapKey!22216 mapValue!22216))))

(declare-fun b!479529 () Bool)

(assert (=> b!479529 (= e!282160 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19309)

(declare-fun lt!217865 () Bool)

(declare-fun zeroValue!1458 () V!19309)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9034 0))(
  ( (tuple2!9035 (_1!4527 (_ BitVec 64)) (_2!4527 V!19309)) )
))
(declare-datatypes ((List!9147 0))(
  ( (Nil!9144) (Cons!9143 (h!9999 tuple2!9034) (t!15361 List!9147)) )
))
(declare-datatypes ((ListLongMap!7961 0))(
  ( (ListLongMap!7962 (toList!3996 List!9147)) )
))
(declare-fun contains!2603 (ListLongMap!7961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2288 (array!30997 array!30995 (_ BitVec 32) (_ BitVec 32) V!19309 V!19309 (_ BitVec 32) Int) ListLongMap!7961)

(assert (=> b!479529 (= lt!217865 (contains!2603 (getCurrentListMap!2288 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479530 () Bool)

(declare-fun res!286106 () Bool)

(assert (=> b!479530 (=> (not res!286106) (not e!282160))))

(declare-datatypes ((List!9148 0))(
  ( (Nil!9145) (Cons!9144 (h!10000 (_ BitVec 64)) (t!15362 List!9148)) )
))
(declare-fun arrayNoDuplicates!0 (array!30997 (_ BitVec 32) List!9148) Bool)

(assert (=> b!479530 (= res!286106 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9145))))

(declare-fun b!479531 () Bool)

(assert (=> b!479531 (= e!282163 (and e!282161 mapRes!22216))))

(declare-fun condMapEmpty!22216 () Bool)

(declare-fun mapDefault!22216 () ValueCell!6478)

