; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93672 () Bool)

(assert start!93672)

(declare-fun res!707760 () Bool)

(declare-fun e!602955 () Bool)

(assert (=> start!93672 (=> (not res!707760) (not e!602955))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93672 (= res!707760 (validMask!0 mask!1515))))

(assert (=> start!93672 e!602955))

(assert (=> start!93672 true))

(declare-datatypes ((V!38389 0))(
  ( (V!38390 (val!12521 Int)) )
))
(declare-datatypes ((ValueCell!11767 0))(
  ( (ValueCellFull!11767 (v!15132 V!38389)) (EmptyCell!11767) )
))
(declare-datatypes ((array!66892 0))(
  ( (array!66893 (arr!32152 (Array (_ BitVec 32) ValueCell!11767)) (size!32689 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66892)

(declare-fun e!602956 () Bool)

(declare-fun array_inv!24768 (array!66892) Bool)

(assert (=> start!93672 (and (array_inv!24768 _values!955) e!602956)))

(declare-datatypes ((array!66894 0))(
  ( (array!66895 (arr!32153 (Array (_ BitVec 32) (_ BitVec 64))) (size!32690 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66894)

(declare-fun array_inv!24769 (array!66894) Bool)

(assert (=> start!93672 (array_inv!24769 _keys!1163)))

(declare-fun b!1059343 () Bool)

(declare-fun res!707759 () Bool)

(assert (=> b!1059343 (=> (not res!707759) (not e!602955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66894 (_ BitVec 32)) Bool)

(assert (=> b!1059343 (= res!707759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059344 () Bool)

(declare-fun e!602953 () Bool)

(declare-fun tp_is_empty!24941 () Bool)

(assert (=> b!1059344 (= e!602953 tp_is_empty!24941)))

(declare-fun b!1059345 () Bool)

(declare-fun e!602954 () Bool)

(assert (=> b!1059345 (= e!602954 tp_is_empty!24941)))

(declare-fun mapNonEmpty!39076 () Bool)

(declare-fun mapRes!39076 () Bool)

(declare-fun tp!74883 () Bool)

(assert (=> mapNonEmpty!39076 (= mapRes!39076 (and tp!74883 e!602954))))

(declare-fun mapKey!39076 () (_ BitVec 32))

(declare-fun mapRest!39076 () (Array (_ BitVec 32) ValueCell!11767))

(declare-fun mapValue!39076 () ValueCell!11767)

(assert (=> mapNonEmpty!39076 (= (arr!32152 _values!955) (store mapRest!39076 mapKey!39076 mapValue!39076))))

(declare-fun b!1059346 () Bool)

(assert (=> b!1059346 (= e!602955 false)))

(declare-fun lt!467093 () Bool)

(declare-datatypes ((List!22548 0))(
  ( (Nil!22545) (Cons!22544 (h!23753 (_ BitVec 64)) (t!31862 List!22548)) )
))
(declare-fun arrayNoDuplicates!0 (array!66894 (_ BitVec 32) List!22548) Bool)

(assert (=> b!1059346 (= lt!467093 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22545))))

(declare-fun b!1059347 () Bool)

(declare-fun res!707758 () Bool)

(assert (=> b!1059347 (=> (not res!707758) (not e!602955))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059347 (= res!707758 (and (= (size!32689 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32690 _keys!1163) (size!32689 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059348 () Bool)

(assert (=> b!1059348 (= e!602956 (and e!602953 mapRes!39076))))

(declare-fun condMapEmpty!39076 () Bool)

(declare-fun mapDefault!39076 () ValueCell!11767)

