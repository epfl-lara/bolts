; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93826 () Bool)

(assert start!93826)

(declare-fun b_free!21263 () Bool)

(declare-fun b_next!21263 () Bool)

(assert (=> start!93826 (= b_free!21263 (not b_next!21263))))

(declare-fun tp!75213 () Bool)

(declare-fun b_and!33995 () Bool)

(assert (=> start!93826 (= tp!75213 b_and!33995)))

(declare-fun b!1060773 () Bool)

(declare-fun res!708528 () Bool)

(declare-fun e!604019 () Bool)

(assert (=> b!1060773 (=> (not res!708528) (not e!604019))))

(declare-datatypes ((array!67140 0))(
  ( (array!67141 (arr!32274 (Array (_ BitVec 32) (_ BitVec 64))) (size!32811 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67140)

(declare-datatypes ((List!22617 0))(
  ( (Nil!22614) (Cons!22613 (h!23822 (_ BitVec 64)) (t!31933 List!22617)) )
))
(declare-fun arrayNoDuplicates!0 (array!67140 (_ BitVec 32) List!22617) Bool)

(assert (=> b!1060773 (= res!708528 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22614))))

(declare-fun mapNonEmpty!39280 () Bool)

(declare-fun mapRes!39280 () Bool)

(declare-fun tp!75212 () Bool)

(declare-fun e!604020 () Bool)

(assert (=> mapNonEmpty!39280 (= mapRes!39280 (and tp!75212 e!604020))))

(declare-datatypes ((V!38565 0))(
  ( (V!38566 (val!12587 Int)) )
))
(declare-datatypes ((ValueCell!11833 0))(
  ( (ValueCellFull!11833 (v!15198 V!38565)) (EmptyCell!11833) )
))
(declare-datatypes ((array!67142 0))(
  ( (array!67143 (arr!32275 (Array (_ BitVec 32) ValueCell!11833)) (size!32812 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67142)

(declare-fun mapKey!39280 () (_ BitVec 32))

(declare-fun mapRest!39280 () (Array (_ BitVec 32) ValueCell!11833))

(declare-fun mapValue!39280 () ValueCell!11833)

(assert (=> mapNonEmpty!39280 (= (arr!32275 _values!955) (store mapRest!39280 mapKey!39280 mapValue!39280))))

(declare-fun b!1060774 () Bool)

(declare-fun tp_is_empty!25073 () Bool)

(assert (=> b!1060774 (= e!604020 tp_is_empty!25073)))

(declare-fun b!1060775 () Bool)

(declare-fun res!708529 () Bool)

(assert (=> b!1060775 (=> (not res!708529) (not e!604019))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67140 (_ BitVec 32)) Bool)

(assert (=> b!1060775 (= res!708529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060776 () Bool)

(declare-fun e!604022 () Bool)

(declare-fun e!604021 () Bool)

(assert (=> b!1060776 (= e!604022 (and e!604021 mapRes!39280))))

(declare-fun condMapEmpty!39280 () Bool)

(declare-fun mapDefault!39280 () ValueCell!11833)

