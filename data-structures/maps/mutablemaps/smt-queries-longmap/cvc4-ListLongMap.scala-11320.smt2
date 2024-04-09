; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131860 () Bool)

(assert start!131860)

(declare-fun b!1543280 () Bool)

(declare-fun e!858892 () Bool)

(assert (=> b!1543280 (= e!858892 false)))

(declare-fun lt!665900 () Bool)

(declare-datatypes ((array!102813 0))(
  ( (array!102814 (arr!49604 (Array (_ BitVec 32) (_ BitVec 64))) (size!50155 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102813)

(declare-datatypes ((List!36065 0))(
  ( (Nil!36062) (Cons!36061 (h!37507 (_ BitVec 64)) (t!50766 List!36065)) )
))
(declare-fun arrayNoDuplicates!0 (array!102813 (_ BitVec 32) List!36065) Bool)

(assert (=> b!1543280 (= lt!665900 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36062))))

(declare-fun b!1543281 () Bool)

(declare-fun e!858889 () Bool)

(declare-fun tp_is_empty!37817 () Bool)

(assert (=> b!1543281 (= e!858889 tp_is_empty!37817)))

(declare-fun b!1543282 () Bool)

(declare-fun res!1058990 () Bool)

(assert (=> b!1543282 (=> (not res!1058990) (not e!858892))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102813 (_ BitVec 32)) Bool)

(assert (=> b!1543282 (= res!1058990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58429 () Bool)

(declare-fun mapRes!58429 () Bool)

(declare-fun tp!110957 () Bool)

(declare-fun e!858890 () Bool)

(assert (=> mapNonEmpty!58429 (= mapRes!58429 (and tp!110957 e!858890))))

(declare-datatypes ((V!58865 0))(
  ( (V!58866 (val!18986 Int)) )
))
(declare-datatypes ((ValueCell!17998 0))(
  ( (ValueCellFull!17998 (v!21784 V!58865)) (EmptyCell!17998) )
))
(declare-fun mapValue!58429 () ValueCell!17998)

(declare-fun mapKey!58429 () (_ BitVec 32))

(declare-fun mapRest!58429 () (Array (_ BitVec 32) ValueCell!17998))

(declare-datatypes ((array!102815 0))(
  ( (array!102816 (arr!49605 (Array (_ BitVec 32) ValueCell!17998)) (size!50156 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102815)

(assert (=> mapNonEmpty!58429 (= (arr!49605 _values!470) (store mapRest!58429 mapKey!58429 mapValue!58429))))

(declare-fun b!1543283 () Bool)

(declare-fun e!858891 () Bool)

(assert (=> b!1543283 (= e!858891 (and e!858889 mapRes!58429))))

(declare-fun condMapEmpty!58429 () Bool)

(declare-fun mapDefault!58429 () ValueCell!17998)

