; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83786 () Bool)

(assert start!83786)

(declare-fun b_free!19567 () Bool)

(declare-fun b_next!19567 () Bool)

(assert (=> start!83786 (= b_free!19567 (not b_next!19567))))

(declare-fun tp!68143 () Bool)

(declare-fun b_and!31241 () Bool)

(assert (=> start!83786 (= tp!68143 b_and!31241)))

(declare-fun b!977895 () Bool)

(declare-fun e!551380 () Bool)

(declare-fun tp_is_empty!22561 () Bool)

(assert (=> b!977895 (= e!551380 tp_is_empty!22561)))

(declare-fun b!977896 () Bool)

(declare-fun res!654548 () Bool)

(declare-fun e!551384 () Bool)

(assert (=> b!977896 (=> (not res!654548) (not e!551384))))

(declare-datatypes ((array!61139 0))(
  ( (array!61140 (arr!29423 (Array (_ BitVec 32) (_ BitVec 64))) (size!29903 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61139)

(declare-datatypes ((List!20525 0))(
  ( (Nil!20522) (Cons!20521 (h!21683 (_ BitVec 64)) (t!29056 List!20525)) )
))
(declare-fun arrayNoDuplicates!0 (array!61139 (_ BitVec 32) List!20525) Bool)

(assert (=> b!977896 (= res!654548 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20522))))

(declare-fun mapIsEmpty!35870 () Bool)

(declare-fun mapRes!35870 () Bool)

(assert (=> mapIsEmpty!35870 mapRes!35870))

(declare-fun b!977897 () Bool)

(declare-fun res!654549 () Bool)

(assert (=> b!977897 (=> (not res!654549) (not e!551384))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977897 (= res!654549 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977898 () Bool)

(declare-fun e!551383 () Bool)

(assert (=> b!977898 (= e!551383 (and e!551380 mapRes!35870))))

(declare-fun condMapEmpty!35870 () Bool)

(declare-datatypes ((V!35065 0))(
  ( (V!35066 (val!11331 Int)) )
))
(declare-datatypes ((ValueCell!10799 0))(
  ( (ValueCellFull!10799 (v!13893 V!35065)) (EmptyCell!10799) )
))
(declare-datatypes ((array!61141 0))(
  ( (array!61142 (arr!29424 (Array (_ BitVec 32) ValueCell!10799)) (size!29904 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61141)

(declare-fun mapDefault!35870 () ValueCell!10799)

