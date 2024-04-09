; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94988 () Bool)

(assert start!94988)

(declare-fun b_free!22157 () Bool)

(declare-fun b_next!22157 () Bool)

(assert (=> start!94988 (= b_free!22157 (not b_next!22157))))

(declare-fun tp!77936 () Bool)

(declare-fun b_and!35029 () Bool)

(assert (=> start!94988 (= tp!77936 b_and!35029)))

(declare-fun b!1073544 () Bool)

(declare-fun res!716090 () Bool)

(declare-fun e!613386 () Bool)

(assert (=> b!1073544 (=> (not res!716090) (not e!613386))))

(declare-datatypes ((array!68856 0))(
  ( (array!68857 (arr!33118 (Array (_ BitVec 32) (_ BitVec 64))) (size!33655 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68856)

(declare-datatypes ((List!23243 0))(
  ( (Nil!23240) (Cons!23239 (h!24448 (_ BitVec 64)) (t!32587 List!23243)) )
))
(declare-fun arrayNoDuplicates!0 (array!68856 (_ BitVec 32) List!23243) Bool)

(assert (=> b!1073544 (= res!716090 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23240))))

(declare-fun b!1073545 () Bool)

(declare-fun res!716091 () Bool)

(assert (=> b!1073545 (=> (not res!716091) (not e!613386))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68856 (_ BitVec 32)) Bool)

(assert (=> b!1073545 (= res!716091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073546 () Bool)

(declare-fun e!613383 () Bool)

(declare-fun e!613384 () Bool)

(declare-fun mapRes!40663 () Bool)

(assert (=> b!1073546 (= e!613383 (and e!613384 mapRes!40663))))

(declare-fun condMapEmpty!40663 () Bool)

(declare-datatypes ((V!39757 0))(
  ( (V!39758 (val!13034 Int)) )
))
(declare-datatypes ((ValueCell!12280 0))(
  ( (ValueCellFull!12280 (v!15653 V!39757)) (EmptyCell!12280) )
))
(declare-datatypes ((array!68858 0))(
  ( (array!68859 (arr!33119 (Array (_ BitVec 32) ValueCell!12280)) (size!33656 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68858)

(declare-fun mapDefault!40663 () ValueCell!12280)

