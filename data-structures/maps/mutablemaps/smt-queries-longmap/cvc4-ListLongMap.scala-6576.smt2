; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83372 () Bool)

(assert start!83372)

(declare-fun b_free!19337 () Bool)

(declare-fun b_next!19337 () Bool)

(assert (=> start!83372 (= b_free!19337 (not b_next!19337))))

(declare-fun tp!67291 () Bool)

(declare-fun b_and!30913 () Bool)

(assert (=> start!83372 (= tp!67291 b_and!30913)))

(declare-fun b!972886 () Bool)

(declare-fun e!548397 () Bool)

(declare-fun e!548399 () Bool)

(assert (=> b!972886 (= e!548397 e!548399)))

(declare-fun res!651334 () Bool)

(assert (=> b!972886 (=> (not res!651334) (not e!548399))))

(declare-fun lt!432207 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972886 (= res!651334 (validKeyInArray!0 lt!432207))))

(declare-datatypes ((array!60495 0))(
  ( (array!60496 (arr!29107 (Array (_ BitVec 32) (_ BitVec 64))) (size!29587 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60495)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!972886 (= lt!432207 (select (arr!29107 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34629 0))(
  ( (V!34630 (val!11168 Int)) )
))
(declare-datatypes ((tuple2!14430 0))(
  ( (tuple2!14431 (_1!7225 (_ BitVec 64)) (_2!7225 V!34629)) )
))
(declare-datatypes ((List!20315 0))(
  ( (Nil!20312) (Cons!20311 (h!21473 tuple2!14430) (t!28758 List!20315)) )
))
(declare-datatypes ((ListLongMap!13141 0))(
  ( (ListLongMap!13142 (toList!6586 List!20315)) )
))
(declare-fun lt!432204 () ListLongMap!13141)

(declare-datatypes ((ValueCell!10636 0))(
  ( (ValueCellFull!10636 (v!13727 V!34629)) (EmptyCell!10636) )
))
(declare-datatypes ((array!60497 0))(
  ( (array!60498 (arr!29108 (Array (_ BitVec 32) ValueCell!10636)) (size!29588 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60497)

(declare-fun zeroValue!1367 () V!34629)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34629)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3771 (array!60495 array!60497 (_ BitVec 32) (_ BitVec 32) V!34629 V!34629 (_ BitVec 32) Int) ListLongMap!13141)

(assert (=> b!972886 (= lt!432204 (getCurrentListMap!3771 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972887 () Bool)

(declare-fun e!548403 () Bool)

(declare-fun tp_is_empty!22235 () Bool)

(assert (=> b!972887 (= e!548403 tp_is_empty!22235)))

(declare-fun b!972889 () Bool)

(declare-fun e!548400 () Bool)

(declare-fun e!548402 () Bool)

(declare-fun mapRes!35362 () Bool)

(assert (=> b!972889 (= e!548400 (and e!548402 mapRes!35362))))

(declare-fun condMapEmpty!35362 () Bool)

(declare-fun mapDefault!35362 () ValueCell!10636)

