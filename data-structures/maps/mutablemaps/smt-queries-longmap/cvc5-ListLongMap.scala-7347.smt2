; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93822 () Bool)

(assert start!93822)

(declare-fun b_free!21259 () Bool)

(declare-fun b_next!21259 () Bool)

(assert (=> start!93822 (= b_free!21259 (not b_next!21259))))

(declare-fun tp!75201 () Bool)

(declare-fun b_and!33991 () Bool)

(assert (=> start!93822 (= tp!75201 b_and!33991)))

(declare-fun res!708507 () Bool)

(declare-fun e!603991 () Bool)

(assert (=> start!93822 (=> (not res!708507) (not e!603991))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93822 (= res!708507 (validMask!0 mask!1515))))

(assert (=> start!93822 e!603991))

(assert (=> start!93822 true))

(declare-fun tp_is_empty!25069 () Bool)

(assert (=> start!93822 tp_is_empty!25069))

(declare-datatypes ((V!38561 0))(
  ( (V!38562 (val!12585 Int)) )
))
(declare-datatypes ((ValueCell!11831 0))(
  ( (ValueCellFull!11831 (v!15196 V!38561)) (EmptyCell!11831) )
))
(declare-datatypes ((array!67132 0))(
  ( (array!67133 (arr!32270 (Array (_ BitVec 32) ValueCell!11831)) (size!32807 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67132)

(declare-fun e!603989 () Bool)

(declare-fun array_inv!24852 (array!67132) Bool)

(assert (=> start!93822 (and (array_inv!24852 _values!955) e!603989)))

(assert (=> start!93822 tp!75201))

(declare-datatypes ((array!67134 0))(
  ( (array!67135 (arr!32271 (Array (_ BitVec 32) (_ BitVec 64))) (size!32808 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67134)

(declare-fun array_inv!24853 (array!67134) Bool)

(assert (=> start!93822 (array_inv!24853 _keys!1163)))

(declare-fun b!1060731 () Bool)

(declare-fun e!603992 () Bool)

(assert (=> b!1060731 (= e!603992 tp_is_empty!25069)))

(declare-fun mapNonEmpty!39274 () Bool)

(declare-fun mapRes!39274 () Bool)

(declare-fun tp!75200 () Bool)

(declare-fun e!603988 () Bool)

(assert (=> mapNonEmpty!39274 (= mapRes!39274 (and tp!75200 e!603988))))

(declare-fun mapRest!39274 () (Array (_ BitVec 32) ValueCell!11831))

(declare-fun mapValue!39274 () ValueCell!11831)

(declare-fun mapKey!39274 () (_ BitVec 32))

(assert (=> mapNonEmpty!39274 (= (arr!32270 _values!955) (store mapRest!39274 mapKey!39274 mapValue!39274))))

(declare-fun b!1060732 () Bool)

(declare-fun res!708505 () Bool)

(assert (=> b!1060732 (=> (not res!708505) (not e!603991))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060732 (= res!708505 (and (= (size!32807 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32808 _keys!1163) (size!32807 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39274 () Bool)

(assert (=> mapIsEmpty!39274 mapRes!39274))

(declare-fun b!1060733 () Bool)

(assert (=> b!1060733 (= e!603991 false)))

(declare-datatypes ((tuple2!16002 0))(
  ( (tuple2!16003 (_1!8011 (_ BitVec 64)) (_2!8011 V!38561)) )
))
(declare-datatypes ((List!22614 0))(
  ( (Nil!22611) (Cons!22610 (h!23819 tuple2!16002) (t!31930 List!22614)) )
))
(declare-datatypes ((ListLongMap!13983 0))(
  ( (ListLongMap!13984 (toList!7007 List!22614)) )
))
(declare-fun lt!467354 () ListLongMap!13983)

(declare-fun minValue!907 () V!38561)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38561)

(declare-fun getCurrentListMapNoExtraKeys!3571 (array!67134 array!67132 (_ BitVec 32) (_ BitVec 32) V!38561 V!38561 (_ BitVec 32) Int) ListLongMap!13983)

(assert (=> b!1060733 (= lt!467354 (getCurrentListMapNoExtraKeys!3571 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38561)

(declare-fun lt!467353 () ListLongMap!13983)

(assert (=> b!1060733 (= lt!467353 (getCurrentListMapNoExtraKeys!3571 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060734 () Bool)

(assert (=> b!1060734 (= e!603988 tp_is_empty!25069)))

(declare-fun b!1060735 () Bool)

(declare-fun res!708504 () Bool)

(assert (=> b!1060735 (=> (not res!708504) (not e!603991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67134 (_ BitVec 32)) Bool)

(assert (=> b!1060735 (= res!708504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060736 () Bool)

(assert (=> b!1060736 (= e!603989 (and e!603992 mapRes!39274))))

(declare-fun condMapEmpty!39274 () Bool)

(declare-fun mapDefault!39274 () ValueCell!11831)

