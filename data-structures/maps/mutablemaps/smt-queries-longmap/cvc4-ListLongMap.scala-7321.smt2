; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93610 () Bool)

(assert start!93610)

(declare-fun b!1058991 () Bool)

(declare-fun e!602688 () Bool)

(declare-datatypes ((array!66840 0))(
  ( (array!66841 (arr!32130 (Array (_ BitVec 32) (_ BitVec 64))) (size!32667 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66840)

(assert (=> b!1058991 (= e!602688 (bvsgt #b00000000000000000000000000000000 (size!32667 _keys!1163)))))

(declare-fun res!707570 () Bool)

(assert (=> start!93610 (=> (not res!707570) (not e!602688))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93610 (= res!707570 (validMask!0 mask!1515))))

(assert (=> start!93610 e!602688))

(assert (=> start!93610 true))

(declare-datatypes ((V!38357 0))(
  ( (V!38358 (val!12509 Int)) )
))
(declare-datatypes ((ValueCell!11755 0))(
  ( (ValueCellFull!11755 (v!15119 V!38357)) (EmptyCell!11755) )
))
(declare-datatypes ((array!66842 0))(
  ( (array!66843 (arr!32131 (Array (_ BitVec 32) ValueCell!11755)) (size!32668 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66842)

(declare-fun e!602685 () Bool)

(declare-fun array_inv!24750 (array!66842) Bool)

(assert (=> start!93610 (and (array_inv!24750 _values!955) e!602685)))

(declare-fun array_inv!24751 (array!66840) Bool)

(assert (=> start!93610 (array_inv!24751 _keys!1163)))

(declare-fun mapNonEmpty!39028 () Bool)

(declare-fun mapRes!39028 () Bool)

(declare-fun tp!74835 () Bool)

(declare-fun e!602687 () Bool)

(assert (=> mapNonEmpty!39028 (= mapRes!39028 (and tp!74835 e!602687))))

(declare-fun mapValue!39028 () ValueCell!11755)

(declare-fun mapKey!39028 () (_ BitVec 32))

(declare-fun mapRest!39028 () (Array (_ BitVec 32) ValueCell!11755))

(assert (=> mapNonEmpty!39028 (= (arr!32131 _values!955) (store mapRest!39028 mapKey!39028 mapValue!39028))))

(declare-fun b!1058992 () Bool)

(declare-fun res!707572 () Bool)

(assert (=> b!1058992 (=> (not res!707572) (not e!602688))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1058992 (= res!707572 (and (= (size!32668 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32667 _keys!1163) (size!32668 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1058993 () Bool)

(declare-fun e!602686 () Bool)

(assert (=> b!1058993 (= e!602685 (and e!602686 mapRes!39028))))

(declare-fun condMapEmpty!39028 () Bool)

(declare-fun mapDefault!39028 () ValueCell!11755)

