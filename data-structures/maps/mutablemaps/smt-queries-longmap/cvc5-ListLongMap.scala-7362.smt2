; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93912 () Bool)

(assert start!93912)

(declare-fun b_free!21349 () Bool)

(declare-fun b_next!21349 () Bool)

(assert (=> start!93912 (= b_free!21349 (not b_next!21349))))

(declare-fun tp!75471 () Bool)

(declare-fun b_and!34081 () Bool)

(assert (=> start!93912 (= tp!75471 b_and!34081)))

(declare-fun mapNonEmpty!39409 () Bool)

(declare-fun mapRes!39409 () Bool)

(declare-fun tp!75470 () Bool)

(declare-fun e!604666 () Bool)

(assert (=> mapNonEmpty!39409 (= mapRes!39409 (and tp!75470 e!604666))))

(declare-datatypes ((V!38681 0))(
  ( (V!38682 (val!12630 Int)) )
))
(declare-datatypes ((ValueCell!11876 0))(
  ( (ValueCellFull!11876 (v!15241 V!38681)) (EmptyCell!11876) )
))
(declare-fun mapValue!39409 () ValueCell!11876)

(declare-fun mapRest!39409 () (Array (_ BitVec 32) ValueCell!11876))

(declare-datatypes ((array!67298 0))(
  ( (array!67299 (arr!32353 (Array (_ BitVec 32) ValueCell!11876)) (size!32890 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67298)

(declare-fun mapKey!39409 () (_ BitVec 32))

(assert (=> mapNonEmpty!39409 (= (arr!32353 _values!955) (store mapRest!39409 mapKey!39409 mapValue!39409))))

(declare-fun b!1061676 () Bool)

(declare-fun tp_is_empty!25159 () Bool)

(assert (=> b!1061676 (= e!604666 tp_is_empty!25159)))

(declare-fun res!709044 () Bool)

(declare-fun e!604665 () Bool)

(assert (=> start!93912 (=> (not res!709044) (not e!604665))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93912 (= res!709044 (validMask!0 mask!1515))))

(assert (=> start!93912 e!604665))

(assert (=> start!93912 true))

(assert (=> start!93912 tp_is_empty!25159))

(declare-fun e!604664 () Bool)

(declare-fun array_inv!24904 (array!67298) Bool)

(assert (=> start!93912 (and (array_inv!24904 _values!955) e!604664)))

(assert (=> start!93912 tp!75471))

(declare-datatypes ((array!67300 0))(
  ( (array!67301 (arr!32354 (Array (_ BitVec 32) (_ BitVec 64))) (size!32891 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67300)

(declare-fun array_inv!24905 (array!67300) Bool)

(assert (=> start!93912 (array_inv!24905 _keys!1163)))

(declare-fun mapIsEmpty!39409 () Bool)

(assert (=> mapIsEmpty!39409 mapRes!39409))

(declare-fun b!1061677 () Bool)

(declare-fun res!709047 () Bool)

(assert (=> b!1061677 (=> (not res!709047) (not e!604665))))

(declare-datatypes ((List!22674 0))(
  ( (Nil!22671) (Cons!22670 (h!23879 (_ BitVec 64)) (t!31990 List!22674)) )
))
(declare-fun arrayNoDuplicates!0 (array!67300 (_ BitVec 32) List!22674) Bool)

(assert (=> b!1061677 (= res!709047 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22671))))

(declare-fun b!1061678 () Bool)

(declare-fun res!709045 () Bool)

(assert (=> b!1061678 (=> (not res!709045) (not e!604665))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061678 (= res!709045 (and (= (size!32890 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32891 _keys!1163) (size!32890 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061679 () Bool)

(declare-fun e!604667 () Bool)

(assert (=> b!1061679 (= e!604664 (and e!604667 mapRes!39409))))

(declare-fun condMapEmpty!39409 () Bool)

(declare-fun mapDefault!39409 () ValueCell!11876)

