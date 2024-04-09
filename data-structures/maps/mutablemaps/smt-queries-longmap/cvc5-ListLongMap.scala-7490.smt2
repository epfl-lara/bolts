; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94948 () Bool)

(assert start!94948)

(declare-fun b_free!22117 () Bool)

(declare-fun b_next!22117 () Bool)

(assert (=> start!94948 (= b_free!22117 (not b_next!22117))))

(declare-fun tp!77817 () Bool)

(declare-fun b_and!34989 () Bool)

(assert (=> start!94948 (= tp!77817 b_and!34989)))

(declare-fun b!1073124 () Bool)

(declare-fun res!715848 () Bool)

(declare-fun e!613086 () Bool)

(assert (=> b!1073124 (=> (not res!715848) (not e!613086))))

(declare-datatypes ((array!68782 0))(
  ( (array!68783 (arr!33081 (Array (_ BitVec 32) (_ BitVec 64))) (size!33618 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68782)

(declare-datatypes ((List!23218 0))(
  ( (Nil!23215) (Cons!23214 (h!24423 (_ BitVec 64)) (t!32562 List!23218)) )
))
(declare-fun arrayNoDuplicates!0 (array!68782 (_ BitVec 32) List!23218) Bool)

(assert (=> b!1073124 (= res!715848 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23215))))

(declare-fun b!1073125 () Bool)

(declare-fun res!715850 () Bool)

(assert (=> b!1073125 (=> (not res!715850) (not e!613086))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68782 (_ BitVec 32)) Bool)

(assert (=> b!1073125 (= res!715850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40603 () Bool)

(declare-fun mapRes!40603 () Bool)

(assert (=> mapIsEmpty!40603 mapRes!40603))

(declare-fun b!1073127 () Bool)

(declare-fun e!613085 () Bool)

(declare-fun tp_is_empty!25927 () Bool)

(assert (=> b!1073127 (= e!613085 tp_is_empty!25927)))

(declare-fun b!1073128 () Bool)

(declare-fun e!613084 () Bool)

(assert (=> b!1073128 (= e!613084 tp_is_empty!25927)))

(declare-fun b!1073129 () Bool)

(assert (=> b!1073129 (= e!613086 false)))

(declare-datatypes ((V!39705 0))(
  ( (V!39706 (val!13014 Int)) )
))
(declare-datatypes ((ValueCell!12260 0))(
  ( (ValueCellFull!12260 (v!15633 V!39705)) (EmptyCell!12260) )
))
(declare-datatypes ((array!68784 0))(
  ( (array!68785 (arr!33082 (Array (_ BitVec 32) ValueCell!12260)) (size!33619 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68784)

(declare-fun minValue!907 () V!39705)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39705)

(declare-datatypes ((tuple2!16638 0))(
  ( (tuple2!16639 (_1!8329 (_ BitVec 64)) (_2!8329 V!39705)) )
))
(declare-datatypes ((List!23219 0))(
  ( (Nil!23216) (Cons!23215 (h!24424 tuple2!16638) (t!32563 List!23219)) )
))
(declare-datatypes ((ListLongMap!14619 0))(
  ( (ListLongMap!14620 (toList!7325 List!23219)) )
))
(declare-fun lt!475948 () ListLongMap!14619)

(declare-fun getCurrentListMapNoExtraKeys!3855 (array!68782 array!68784 (_ BitVec 32) (_ BitVec 32) V!39705 V!39705 (_ BitVec 32) Int) ListLongMap!14619)

(assert (=> b!1073129 (= lt!475948 (getCurrentListMapNoExtraKeys!3855 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39705)

(declare-fun lt!475949 () ListLongMap!14619)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073129 (= lt!475949 (getCurrentListMapNoExtraKeys!3855 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40603 () Bool)

(declare-fun tp!77816 () Bool)

(assert (=> mapNonEmpty!40603 (= mapRes!40603 (and tp!77816 e!613084))))

(declare-fun mapRest!40603 () (Array (_ BitVec 32) ValueCell!12260))

(declare-fun mapKey!40603 () (_ BitVec 32))

(declare-fun mapValue!40603 () ValueCell!12260)

(assert (=> mapNonEmpty!40603 (= (arr!33082 _values!955) (store mapRest!40603 mapKey!40603 mapValue!40603))))

(declare-fun b!1073130 () Bool)

(declare-fun e!613087 () Bool)

(assert (=> b!1073130 (= e!613087 (and e!613085 mapRes!40603))))

(declare-fun condMapEmpty!40603 () Bool)

(declare-fun mapDefault!40603 () ValueCell!12260)

