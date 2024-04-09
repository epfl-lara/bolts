; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83456 () Bool)

(assert start!83456)

(declare-fun b_free!19421 () Bool)

(declare-fun b_next!19421 () Bool)

(assert (=> start!83456 (= b_free!19421 (not b_next!19421))))

(declare-fun tp!67543 () Bool)

(declare-fun b_and!31041 () Bool)

(assert (=> start!83456 (= tp!67543 b_and!31041)))

(declare-fun b!974254 () Bool)

(declare-fun e!549157 () Bool)

(declare-fun tp_is_empty!22319 () Bool)

(assert (=> b!974254 (= e!549157 tp_is_empty!22319)))

(declare-fun b!974255 () Bool)

(declare-fun res!652282 () Bool)

(declare-fun e!549158 () Bool)

(assert (=> b!974255 (=> (not res!652282) (not e!549158))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34741 0))(
  ( (V!34742 (val!11210 Int)) )
))
(declare-datatypes ((ValueCell!10678 0))(
  ( (ValueCellFull!10678 (v!13769 V!34741)) (EmptyCell!10678) )
))
(declare-datatypes ((array!60659 0))(
  ( (array!60660 (arr!29189 (Array (_ BitVec 32) ValueCell!10678)) (size!29669 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60659)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60661 0))(
  ( (array!60662 (arr!29190 (Array (_ BitVec 32) (_ BitVec 64))) (size!29670 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60661)

(assert (=> b!974255 (= res!652282 (and (= (size!29669 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29670 _keys!1717) (size!29669 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974256 () Bool)

(assert (=> b!974256 (= e!549158 false)))

(declare-datatypes ((tuple2!14504 0))(
  ( (tuple2!14505 (_1!7262 (_ BitVec 64)) (_2!7262 V!34741)) )
))
(declare-datatypes ((List!20380 0))(
  ( (Nil!20377) (Cons!20376 (h!21538 tuple2!14504) (t!28865 List!20380)) )
))
(declare-datatypes ((ListLongMap!13215 0))(
  ( (ListLongMap!13216 (toList!6623 List!20380)) )
))
(declare-fun lt!432712 () ListLongMap!13215)

(declare-fun zeroValue!1367 () V!34741)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34741)

(declare-fun getCurrentListMap!3808 (array!60661 array!60659 (_ BitVec 32) (_ BitVec 32) V!34741 V!34741 (_ BitVec 32) Int) ListLongMap!13215)

(assert (=> b!974256 (= lt!432712 (getCurrentListMap!3808 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974257 () Bool)

(declare-fun e!549159 () Bool)

(declare-fun mapRes!35488 () Bool)

(assert (=> b!974257 (= e!549159 (and e!549157 mapRes!35488))))

(declare-fun condMapEmpty!35488 () Bool)

(declare-fun mapDefault!35488 () ValueCell!10678)

