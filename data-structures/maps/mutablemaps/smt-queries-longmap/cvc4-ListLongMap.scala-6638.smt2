; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83832 () Bool)

(assert start!83832)

(declare-fun b_free!19613 () Bool)

(declare-fun b_next!19613 () Bool)

(assert (=> start!83832 (= b_free!19613 (not b_next!19613))))

(declare-fun tp!68281 () Bool)

(declare-fun b_and!31333 () Bool)

(assert (=> start!83832 (= tp!68281 b_and!31333)))

(declare-fun b!978631 () Bool)

(declare-fun res!655035 () Bool)

(declare-fun e!551729 () Bool)

(assert (=> b!978631 (=> (not res!655035) (not e!551729))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61229 0))(
  ( (array!61230 (arr!29468 (Array (_ BitVec 32) (_ BitVec 64))) (size!29948 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61229)

(assert (=> b!978631 (= res!655035 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29948 _keys!1544))))))

(declare-fun mapIsEmpty!35939 () Bool)

(declare-fun mapRes!35939 () Bool)

(assert (=> mapIsEmpty!35939 mapRes!35939))

(declare-fun b!978632 () Bool)

(declare-fun res!655031 () Bool)

(assert (=> b!978632 (=> (not res!655031) (not e!551729))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61229 (_ BitVec 32)) Bool)

(assert (=> b!978632 (= res!655031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978633 () Bool)

(declare-fun e!551726 () Bool)

(declare-fun tp_is_empty!22607 () Bool)

(assert (=> b!978633 (= e!551726 tp_is_empty!22607)))

(declare-fun b!978634 () Bool)

(declare-fun res!655033 () Bool)

(assert (=> b!978634 (=> (not res!655033) (not e!551729))))

(declare-datatypes ((List!20555 0))(
  ( (Nil!20552) (Cons!20551 (h!21713 (_ BitVec 64)) (t!29132 List!20555)) )
))
(declare-fun arrayNoDuplicates!0 (array!61229 (_ BitVec 32) List!20555) Bool)

(assert (=> b!978634 (= res!655033 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20552))))

(declare-fun b!978635 () Bool)

(declare-fun e!551727 () Bool)

(assert (=> b!978635 (= e!551727 (and e!551726 mapRes!35939))))

(declare-fun condMapEmpty!35939 () Bool)

(declare-datatypes ((V!35125 0))(
  ( (V!35126 (val!11354 Int)) )
))
(declare-datatypes ((ValueCell!10822 0))(
  ( (ValueCellFull!10822 (v!13916 V!35125)) (EmptyCell!10822) )
))
(declare-datatypes ((array!61231 0))(
  ( (array!61232 (arr!29469 (Array (_ BitVec 32) ValueCell!10822)) (size!29949 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61231)

(declare-fun mapDefault!35939 () ValueCell!10822)

