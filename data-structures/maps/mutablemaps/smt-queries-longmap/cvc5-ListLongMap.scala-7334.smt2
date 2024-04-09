; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93732 () Bool)

(assert start!93732)

(declare-fun b_free!21181 () Bool)

(declare-fun b_next!21181 () Bool)

(assert (=> start!93732 (= b_free!21181 (not b_next!21181))))

(declare-fun tp!74964 () Bool)

(declare-fun b_and!33909 () Bool)

(assert (=> start!93732 (= tp!74964 b_and!33909)))

(declare-fun b!1059839 () Bool)

(declare-fun e!603358 () Bool)

(assert (=> b!1059839 (= e!603358 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38457 0))(
  ( (V!38458 (val!12546 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38457)

(declare-datatypes ((ValueCell!11792 0))(
  ( (ValueCellFull!11792 (v!15157 V!38457)) (EmptyCell!11792) )
))
(declare-datatypes ((array!66990 0))(
  ( (array!66991 (arr!32200 (Array (_ BitVec 32) ValueCell!11792)) (size!32737 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66990)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38457)

(declare-datatypes ((tuple2!15950 0))(
  ( (tuple2!15951 (_1!7985 (_ BitVec 64)) (_2!7985 V!38457)) )
))
(declare-datatypes ((List!22564 0))(
  ( (Nil!22561) (Cons!22560 (h!23769 tuple2!15950) (t!31878 List!22564)) )
))
(declare-datatypes ((ListLongMap!13931 0))(
  ( (ListLongMap!13932 (toList!6981 List!22564)) )
))
(declare-fun lt!467168 () ListLongMap!13931)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66992 0))(
  ( (array!66993 (arr!32201 (Array (_ BitVec 32) (_ BitVec 64))) (size!32738 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66992)

(declare-fun getCurrentListMapNoExtraKeys!3545 (array!66992 array!66990 (_ BitVec 32) (_ BitVec 32) V!38457 V!38457 (_ BitVec 32) Int) ListLongMap!13931)

(assert (=> b!1059839 (= lt!467168 (getCurrentListMapNoExtraKeys!3545 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39154 () Bool)

(declare-fun mapRes!39154 () Bool)

(declare-fun tp!74963 () Bool)

(declare-fun e!603356 () Bool)

(assert (=> mapNonEmpty!39154 (= mapRes!39154 (and tp!74963 e!603356))))

(declare-fun mapKey!39154 () (_ BitVec 32))

(declare-fun mapValue!39154 () ValueCell!11792)

(declare-fun mapRest!39154 () (Array (_ BitVec 32) ValueCell!11792))

(assert (=> mapNonEmpty!39154 (= (arr!32200 _values!955) (store mapRest!39154 mapKey!39154 mapValue!39154))))

(declare-fun res!708011 () Bool)

(assert (=> start!93732 (=> (not res!708011) (not e!603358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93732 (= res!708011 (validMask!0 mask!1515))))

(assert (=> start!93732 e!603358))

(assert (=> start!93732 true))

(declare-fun tp_is_empty!24991 () Bool)

(assert (=> start!93732 tp_is_empty!24991))

(declare-fun e!603359 () Bool)

(declare-fun array_inv!24810 (array!66990) Bool)

(assert (=> start!93732 (and (array_inv!24810 _values!955) e!603359)))

(assert (=> start!93732 tp!74964))

(declare-fun array_inv!24811 (array!66992) Bool)

(assert (=> start!93732 (array_inv!24811 _keys!1163)))

(declare-fun b!1059840 () Bool)

(declare-fun res!708012 () Bool)

(assert (=> b!1059840 (=> (not res!708012) (not e!603358))))

(declare-datatypes ((List!22565 0))(
  ( (Nil!22562) (Cons!22561 (h!23770 (_ BitVec 64)) (t!31879 List!22565)) )
))
(declare-fun arrayNoDuplicates!0 (array!66992 (_ BitVec 32) List!22565) Bool)

(assert (=> b!1059840 (= res!708012 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22562))))

(declare-fun mapIsEmpty!39154 () Bool)

(assert (=> mapIsEmpty!39154 mapRes!39154))

(declare-fun b!1059841 () Bool)

(declare-fun res!708010 () Bool)

(assert (=> b!1059841 (=> (not res!708010) (not e!603358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66992 (_ BitVec 32)) Bool)

(assert (=> b!1059841 (= res!708010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059842 () Bool)

(declare-fun res!708009 () Bool)

(assert (=> b!1059842 (=> (not res!708009) (not e!603358))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1059842 (= res!708009 (and (= (size!32737 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32738 _keys!1163) (size!32737 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059843 () Bool)

(declare-fun e!603355 () Bool)

(assert (=> b!1059843 (= e!603355 tp_is_empty!24991)))

(declare-fun b!1059844 () Bool)

(assert (=> b!1059844 (= e!603356 tp_is_empty!24991)))

(declare-fun b!1059845 () Bool)

(assert (=> b!1059845 (= e!603359 (and e!603355 mapRes!39154))))

(declare-fun condMapEmpty!39154 () Bool)

(declare-fun mapDefault!39154 () ValueCell!11792)

