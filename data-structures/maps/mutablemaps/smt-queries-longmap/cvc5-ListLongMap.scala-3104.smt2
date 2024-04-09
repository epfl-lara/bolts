; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43616 () Bool)

(assert start!43616)

(declare-fun b_free!12343 () Bool)

(declare-fun b_next!12343 () Bool)

(assert (=> start!43616 (= b_free!12343 (not b_next!12343))))

(declare-fun tp!43318 () Bool)

(declare-fun b_and!21125 () Bool)

(assert (=> start!43616 (= tp!43318 b_and!21125)))

(declare-fun b!482868 () Bool)

(declare-fun e!284178 () Bool)

(declare-fun tp_is_empty!13855 () Bool)

(assert (=> b!482868 (= e!284178 tp_is_empty!13855)))

(declare-fun b!482869 () Bool)

(declare-fun res!287844 () Bool)

(declare-fun e!284174 () Bool)

(assert (=> b!482869 (=> (not res!287844) (not e!284174))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19545 0))(
  ( (V!19546 (val!6975 Int)) )
))
(declare-fun minValue!1458 () V!19545)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19545)

(declare-datatypes ((ValueCell!6566 0))(
  ( (ValueCellFull!6566 (v!9266 V!19545)) (EmptyCell!6566) )
))
(declare-datatypes ((array!31337 0))(
  ( (array!31338 (arr!15066 (Array (_ BitVec 32) ValueCell!6566)) (size!15424 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31337)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31339 0))(
  ( (array!31340 (arr!15067 (Array (_ BitVec 32) (_ BitVec 64))) (size!15425 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31339)

(declare-datatypes ((tuple2!9156 0))(
  ( (tuple2!9157 (_1!4588 (_ BitVec 64)) (_2!4588 V!19545)) )
))
(declare-datatypes ((List!9272 0))(
  ( (Nil!9269) (Cons!9268 (h!10124 tuple2!9156) (t!15498 List!9272)) )
))
(declare-datatypes ((ListLongMap!8083 0))(
  ( (ListLongMap!8084 (toList!4057 List!9272)) )
))
(declare-fun contains!2670 (ListLongMap!8083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2349 (array!31339 array!31337 (_ BitVec 32) (_ BitVec 32) V!19545 V!19545 (_ BitVec 32) Int) ListLongMap!8083)

(assert (=> b!482869 (= res!287844 (contains!2670 (getCurrentListMap!2349 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!482870 () Bool)

(declare-fun res!287845 () Bool)

(assert (=> b!482870 (=> (not res!287845) (not e!284174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31339 (_ BitVec 32)) Bool)

(assert (=> b!482870 (= res!287845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482871 () Bool)

(declare-fun res!287847 () Bool)

(assert (=> b!482871 (=> (not res!287847) (not e!284174))))

(assert (=> b!482871 (= res!287847 (and (= (size!15424 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15425 _keys!1874) (size!15424 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22498 () Bool)

(declare-fun mapRes!22498 () Bool)

(declare-fun tp!43317 () Bool)

(assert (=> mapNonEmpty!22498 (= mapRes!22498 (and tp!43317 e!284178))))

(declare-fun mapRest!22498 () (Array (_ BitVec 32) ValueCell!6566))

(declare-fun mapKey!22498 () (_ BitVec 32))

(declare-fun mapValue!22498 () ValueCell!6566)

(assert (=> mapNonEmpty!22498 (= (arr!15066 _values!1516) (store mapRest!22498 mapKey!22498 mapValue!22498))))

(declare-fun res!287843 () Bool)

(assert (=> start!43616 (=> (not res!287843) (not e!284174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43616 (= res!287843 (validMask!0 mask!2352))))

(assert (=> start!43616 e!284174))

(assert (=> start!43616 true))

(assert (=> start!43616 tp_is_empty!13855))

(declare-fun e!284175 () Bool)

(declare-fun array_inv!10846 (array!31337) Bool)

(assert (=> start!43616 (and (array_inv!10846 _values!1516) e!284175)))

(assert (=> start!43616 tp!43318))

(declare-fun array_inv!10847 (array!31339) Bool)

(assert (=> start!43616 (array_inv!10847 _keys!1874)))

(declare-fun b!482872 () Bool)

(declare-fun e!284179 () Bool)

(assert (=> b!482872 (= e!284179 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482873 () Bool)

(declare-fun e!284177 () Bool)

(assert (=> b!482873 (= e!284177 tp_is_empty!13855)))

(declare-fun b!482874 () Bool)

(assert (=> b!482874 (= e!284175 (and e!284177 mapRes!22498))))

(declare-fun condMapEmpty!22498 () Bool)

(declare-fun mapDefault!22498 () ValueCell!6566)

