; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83092 () Bool)

(assert start!83092)

(declare-fun b!968870 () Bool)

(declare-fun res!648645 () Bool)

(declare-fun e!546177 () Bool)

(assert (=> b!968870 (=> (not res!648645) (not e!546177))))

(declare-datatypes ((array!59961 0))(
  ( (array!59962 (arr!28840 (Array (_ BitVec 32) (_ BitVec 64))) (size!29320 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59961)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59961 (_ BitVec 32)) Bool)

(assert (=> b!968870 (= res!648645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968871 () Bool)

(declare-fun e!546176 () Bool)

(declare-fun tp_is_empty!21955 () Bool)

(assert (=> b!968871 (= e!546176 tp_is_empty!21955)))

(declare-fun mapIsEmpty!34942 () Bool)

(declare-fun mapRes!34942 () Bool)

(assert (=> mapIsEmpty!34942 mapRes!34942))

(declare-fun b!968872 () Bool)

(declare-fun res!648646 () Bool)

(assert (=> b!968872 (=> (not res!648646) (not e!546177))))

(declare-datatypes ((V!34257 0))(
  ( (V!34258 (val!11028 Int)) )
))
(declare-datatypes ((ValueCell!10496 0))(
  ( (ValueCellFull!10496 (v!13587 V!34257)) (EmptyCell!10496) )
))
(declare-datatypes ((array!59963 0))(
  ( (array!59964 (arr!28841 (Array (_ BitVec 32) ValueCell!10496)) (size!29321 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59963)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968872 (= res!648646 (and (= (size!29321 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29320 _keys!1717) (size!29321 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968873 () Bool)

(assert (=> b!968873 (= e!546177 false)))

(declare-fun lt!431527 () Bool)

(declare-datatypes ((List!20131 0))(
  ( (Nil!20128) (Cons!20127 (h!21289 (_ BitVec 64)) (t!28502 List!20131)) )
))
(declare-fun arrayNoDuplicates!0 (array!59961 (_ BitVec 32) List!20131) Bool)

(assert (=> b!968873 (= lt!431527 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20128))))

(declare-fun b!968874 () Bool)

(declare-fun e!546173 () Bool)

(assert (=> b!968874 (= e!546173 tp_is_empty!21955)))

(declare-fun res!648644 () Bool)

(assert (=> start!83092 (=> (not res!648644) (not e!546177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83092 (= res!648644 (validMask!0 mask!2147))))

(assert (=> start!83092 e!546177))

(assert (=> start!83092 true))

(declare-fun e!546175 () Bool)

(declare-fun array_inv!22221 (array!59963) Bool)

(assert (=> start!83092 (and (array_inv!22221 _values!1425) e!546175)))

(declare-fun array_inv!22222 (array!59961) Bool)

(assert (=> start!83092 (array_inv!22222 _keys!1717)))

(declare-fun b!968875 () Bool)

(assert (=> b!968875 (= e!546175 (and e!546173 mapRes!34942))))

(declare-fun condMapEmpty!34942 () Bool)

(declare-fun mapDefault!34942 () ValueCell!10496)

