; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81894 () Bool)

(assert start!81894)

(declare-fun b_free!18361 () Bool)

(declare-fun b_next!18361 () Bool)

(assert (=> start!81894 (= b_free!18361 (not b_next!18361))))

(declare-fun tp!63783 () Bool)

(declare-fun b_and!29865 () Bool)

(assert (=> start!81894 (= tp!63783 b_and!29865)))

(declare-fun res!639359 () Bool)

(declare-fun e!537846 () Bool)

(assert (=> start!81894 (=> (not res!639359) (not e!537846))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81894 (= res!639359 (validMask!0 mask!1823))))

(assert (=> start!81894 e!537846))

(assert (=> start!81894 true))

(declare-fun tp_is_empty!20905 () Bool)

(assert (=> start!81894 tp_is_empty!20905))

(declare-datatypes ((array!57935 0))(
  ( (array!57936 (arr!27843 (Array (_ BitVec 32) (_ BitVec 64))) (size!28323 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57935)

(declare-fun array_inv!21561 (array!57935) Bool)

(assert (=> start!81894 (array_inv!21561 _keys!1441)))

(declare-datatypes ((V!32857 0))(
  ( (V!32858 (val!10503 Int)) )
))
(declare-datatypes ((ValueCell!9971 0))(
  ( (ValueCellFull!9971 (v!13058 V!32857)) (EmptyCell!9971) )
))
(declare-datatypes ((array!57937 0))(
  ( (array!57938 (arr!27844 (Array (_ BitVec 32) ValueCell!9971)) (size!28324 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57937)

(declare-fun e!537844 () Bool)

(declare-fun array_inv!21562 (array!57937) Bool)

(assert (=> start!81894 (and (array_inv!21562 _values!1197) e!537844)))

(assert (=> start!81894 tp!63783))

(declare-fun b!954601 () Bool)

(declare-fun e!537845 () Bool)

(assert (=> b!954601 (= e!537845 tp_is_empty!20905)))

(declare-fun b!954602 () Bool)

(declare-fun res!639361 () Bool)

(assert (=> b!954602 (=> (not res!639361) (not e!537846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57935 (_ BitVec 32)) Bool)

(assert (=> b!954602 (= res!639361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954603 () Bool)

(declare-fun res!639356 () Bool)

(assert (=> b!954603 (=> (not res!639356) (not e!537846))))

(declare-datatypes ((List!19548 0))(
  ( (Nil!19545) (Cons!19544 (h!20706 (_ BitVec 64)) (t!27917 List!19548)) )
))
(declare-fun arrayNoDuplicates!0 (array!57935 (_ BitVec 32) List!19548) Bool)

(assert (=> b!954603 (= res!639356 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19545))))

(declare-fun b!954604 () Bool)

(declare-fun res!639360 () Bool)

(assert (=> b!954604 (=> (not res!639360) (not e!537846))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954604 (= res!639360 (and (= (size!28324 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28323 _keys!1441) (size!28324 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954605 () Bool)

(assert (=> b!954605 (= e!537846 false)))

(declare-fun zeroValue!1139 () V!32857)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun lt!429880 () Bool)

(declare-fun minValue!1139 () V!32857)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13732 0))(
  ( (tuple2!13733 (_1!6876 (_ BitVec 64)) (_2!6876 V!32857)) )
))
(declare-datatypes ((List!19549 0))(
  ( (Nil!19546) (Cons!19545 (h!20707 tuple2!13732) (t!27918 List!19549)) )
))
(declare-datatypes ((ListLongMap!12443 0))(
  ( (ListLongMap!12444 (toList!6237 List!19549)) )
))
(declare-fun contains!5287 (ListLongMap!12443 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3422 (array!57935 array!57937 (_ BitVec 32) (_ BitVec 32) V!32857 V!32857 (_ BitVec 32) Int) ListLongMap!12443)

(assert (=> b!954605 (= lt!429880 (contains!5287 (getCurrentListMap!3422 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27843 _keys!1441) i!735)))))

(declare-fun mapIsEmpty!33319 () Bool)

(declare-fun mapRes!33319 () Bool)

(assert (=> mapIsEmpty!33319 mapRes!33319))

(declare-fun b!954606 () Bool)

(declare-fun e!537843 () Bool)

(assert (=> b!954606 (= e!537843 tp_is_empty!20905)))

(declare-fun b!954607 () Bool)

(declare-fun res!639358 () Bool)

(assert (=> b!954607 (=> (not res!639358) (not e!537846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954607 (= res!639358 (validKeyInArray!0 (select (arr!27843 _keys!1441) i!735)))))

(declare-fun b!954608 () Bool)

(declare-fun res!639357 () Bool)

(assert (=> b!954608 (=> (not res!639357) (not e!537846))))

(assert (=> b!954608 (= res!639357 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28323 _keys!1441))))))

(declare-fun b!954609 () Bool)

(assert (=> b!954609 (= e!537844 (and e!537843 mapRes!33319))))

(declare-fun condMapEmpty!33319 () Bool)

(declare-fun mapDefault!33319 () ValueCell!9971)

