; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81994 () Bool)

(assert start!81994)

(declare-fun b!955927 () Bool)

(declare-fun res!640233 () Bool)

(declare-fun e!538593 () Bool)

(assert (=> b!955927 (=> (not res!640233) (not e!538593))))

(declare-datatypes ((array!58131 0))(
  ( (array!58132 (arr!27941 (Array (_ BitVec 32) (_ BitVec 64))) (size!28421 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58131)

(declare-datatypes ((V!32989 0))(
  ( (V!32990 (val!10553 Int)) )
))
(declare-datatypes ((ValueCell!10021 0))(
  ( (ValueCellFull!10021 (v!13108 V!32989)) (EmptyCell!10021) )
))
(declare-datatypes ((array!58133 0))(
  ( (array!58134 (arr!27942 (Array (_ BitVec 32) ValueCell!10021)) (size!28422 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58133)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955927 (= res!640233 (and (= (size!28422 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28421 _keys!1441) (size!28422 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955928 () Bool)

(declare-fun e!538594 () Bool)

(declare-fun tp_is_empty!21005 () Bool)

(assert (=> b!955928 (= e!538594 tp_is_empty!21005)))

(declare-fun res!640234 () Bool)

(assert (=> start!81994 (=> (not res!640234) (not e!538593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81994 (= res!640234 (validMask!0 mask!1823))))

(assert (=> start!81994 e!538593))

(assert (=> start!81994 true))

(declare-fun e!538592 () Bool)

(declare-fun array_inv!21627 (array!58133) Bool)

(assert (=> start!81994 (and (array_inv!21627 _values!1197) e!538592)))

(declare-fun array_inv!21628 (array!58131) Bool)

(assert (=> start!81994 (array_inv!21628 _keys!1441)))

(declare-fun b!955929 () Bool)

(declare-fun e!538596 () Bool)

(assert (=> b!955929 (= e!538596 tp_is_empty!21005)))

(declare-fun mapIsEmpty!33469 () Bool)

(declare-fun mapRes!33469 () Bool)

(assert (=> mapIsEmpty!33469 mapRes!33469))

(declare-fun mapNonEmpty!33469 () Bool)

(declare-fun tp!64048 () Bool)

(assert (=> mapNonEmpty!33469 (= mapRes!33469 (and tp!64048 e!538594))))

(declare-fun mapValue!33469 () ValueCell!10021)

(declare-fun mapKey!33469 () (_ BitVec 32))

(declare-fun mapRest!33469 () (Array (_ BitVec 32) ValueCell!10021))

(assert (=> mapNonEmpty!33469 (= (arr!27942 _values!1197) (store mapRest!33469 mapKey!33469 mapValue!33469))))

(declare-fun b!955930 () Bool)

(declare-fun res!640232 () Bool)

(assert (=> b!955930 (=> (not res!640232) (not e!538593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58131 (_ BitVec 32)) Bool)

(assert (=> b!955930 (= res!640232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955931 () Bool)

(assert (=> b!955931 (= e!538593 false)))

(declare-fun lt!430030 () Bool)

(declare-datatypes ((List!19611 0))(
  ( (Nil!19608) (Cons!19607 (h!20769 (_ BitVec 64)) (t!27980 List!19611)) )
))
(declare-fun arrayNoDuplicates!0 (array!58131 (_ BitVec 32) List!19611) Bool)

(assert (=> b!955931 (= lt!430030 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19608))))

(declare-fun b!955932 () Bool)

(assert (=> b!955932 (= e!538592 (and e!538596 mapRes!33469))))

(declare-fun condMapEmpty!33469 () Bool)

(declare-fun mapDefault!33469 () ValueCell!10021)

