; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83976 () Bool)

(assert start!83976)

(declare-fun b!980893 () Bool)

(declare-fun res!656529 () Bool)

(declare-fun e!552968 () Bool)

(assert (=> b!980893 (=> (not res!656529) (not e!552968))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35317 0))(
  ( (V!35318 (val!11426 Int)) )
))
(declare-datatypes ((ValueCell!10894 0))(
  ( (ValueCellFull!10894 (v!13988 V!35317)) (EmptyCell!10894) )
))
(declare-datatypes ((array!61499 0))(
  ( (array!61500 (arr!29603 (Array (_ BitVec 32) ValueCell!10894)) (size!30083 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61499)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61501 0))(
  ( (array!61502 (arr!29604 (Array (_ BitVec 32) (_ BitVec 64))) (size!30084 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61501)

(assert (=> b!980893 (= res!656529 (and (= (size!30083 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30084 _keys!1544) (size!30083 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980894 () Bool)

(declare-fun e!552967 () Bool)

(declare-fun tp_is_empty!22751 () Bool)

(assert (=> b!980894 (= e!552967 tp_is_empty!22751)))

(declare-fun b!980895 () Bool)

(declare-fun res!656528 () Bool)

(assert (=> b!980895 (=> (not res!656528) (not e!552968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61501 (_ BitVec 32)) Bool)

(assert (=> b!980895 (= res!656528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36155 () Bool)

(declare-fun mapRes!36155 () Bool)

(declare-fun tp!68669 () Bool)

(declare-fun e!552971 () Bool)

(assert (=> mapNonEmpty!36155 (= mapRes!36155 (and tp!68669 e!552971))))

(declare-fun mapKey!36155 () (_ BitVec 32))

(declare-fun mapRest!36155 () (Array (_ BitVec 32) ValueCell!10894))

(declare-fun mapValue!36155 () ValueCell!10894)

(assert (=> mapNonEmpty!36155 (= (arr!29603 _values!1278) (store mapRest!36155 mapKey!36155 mapValue!36155))))

(declare-fun mapIsEmpty!36155 () Bool)

(assert (=> mapIsEmpty!36155 mapRes!36155))

(declare-fun b!980897 () Bool)

(assert (=> b!980897 (= e!552968 false)))

(declare-fun lt!435589 () Bool)

(declare-datatypes ((List!20652 0))(
  ( (Nil!20649) (Cons!20648 (h!21810 (_ BitVec 64)) (t!29343 List!20652)) )
))
(declare-fun arrayNoDuplicates!0 (array!61501 (_ BitVec 32) List!20652) Bool)

(assert (=> b!980897 (= lt!435589 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20649))))

(declare-fun b!980898 () Bool)

(assert (=> b!980898 (= e!552971 tp_is_empty!22751)))

(declare-fun b!980896 () Bool)

(declare-fun e!552969 () Bool)

(assert (=> b!980896 (= e!552969 (and e!552967 mapRes!36155))))

(declare-fun condMapEmpty!36155 () Bool)

(declare-fun mapDefault!36155 () ValueCell!10894)

