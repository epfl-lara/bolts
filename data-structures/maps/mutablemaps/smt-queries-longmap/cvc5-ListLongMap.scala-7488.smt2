; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94936 () Bool)

(assert start!94936)

(declare-fun b_free!22105 () Bool)

(declare-fun b_next!22105 () Bool)

(assert (=> start!94936 (= b_free!22105 (not b_next!22105))))

(declare-fun tp!77781 () Bool)

(declare-fun b_and!34977 () Bool)

(assert (=> start!94936 (= tp!77781 b_and!34977)))

(declare-fun b!1072998 () Bool)

(declare-fun res!715776 () Bool)

(declare-fun e!612993 () Bool)

(assert (=> b!1072998 (=> (not res!715776) (not e!612993))))

(declare-datatypes ((array!68758 0))(
  ( (array!68759 (arr!33069 (Array (_ BitVec 32) (_ BitVec 64))) (size!33606 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68758)

(declare-datatypes ((List!23210 0))(
  ( (Nil!23207) (Cons!23206 (h!24415 (_ BitVec 64)) (t!32554 List!23210)) )
))
(declare-fun arrayNoDuplicates!0 (array!68758 (_ BitVec 32) List!23210) Bool)

(assert (=> b!1072998 (= res!715776 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23207))))

(declare-fun b!1072999 () Bool)

(declare-fun res!715778 () Bool)

(assert (=> b!1072999 (=> (not res!715778) (not e!612993))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68758 (_ BitVec 32)) Bool)

(assert (=> b!1072999 (= res!715778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!715777 () Bool)

(assert (=> start!94936 (=> (not res!715777) (not e!612993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94936 (= res!715777 (validMask!0 mask!1515))))

(assert (=> start!94936 e!612993))

(assert (=> start!94936 true))

(declare-fun tp_is_empty!25915 () Bool)

(assert (=> start!94936 tp_is_empty!25915))

(declare-datatypes ((V!39689 0))(
  ( (V!39690 (val!13008 Int)) )
))
(declare-datatypes ((ValueCell!12254 0))(
  ( (ValueCellFull!12254 (v!15627 V!39689)) (EmptyCell!12254) )
))
(declare-datatypes ((array!68760 0))(
  ( (array!68761 (arr!33070 (Array (_ BitVec 32) ValueCell!12254)) (size!33607 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68760)

(declare-fun e!612995 () Bool)

(declare-fun array_inv!25418 (array!68760) Bool)

(assert (=> start!94936 (and (array_inv!25418 _values!955) e!612995)))

(assert (=> start!94936 tp!77781))

(declare-fun array_inv!25419 (array!68758) Bool)

(assert (=> start!94936 (array_inv!25419 _keys!1163)))

(declare-fun b!1073000 () Bool)

(declare-fun e!612997 () Bool)

(assert (=> b!1073000 (= e!612997 tp_is_empty!25915)))

(declare-fun b!1073001 () Bool)

(declare-fun res!715779 () Bool)

(assert (=> b!1073001 (=> (not res!715779) (not e!612993))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073001 (= res!715779 (and (= (size!33607 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33606 _keys!1163) (size!33607 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073002 () Bool)

(declare-fun e!612994 () Bool)

(declare-fun mapRes!40585 () Bool)

(assert (=> b!1073002 (= e!612995 (and e!612994 mapRes!40585))))

(declare-fun condMapEmpty!40585 () Bool)

(declare-fun mapDefault!40585 () ValueCell!12254)

