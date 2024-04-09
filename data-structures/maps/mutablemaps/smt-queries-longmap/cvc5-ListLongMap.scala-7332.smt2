; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93710 () Bool)

(assert start!93710)

(declare-fun res!707929 () Bool)

(declare-fun e!603239 () Bool)

(assert (=> start!93710 (=> (not res!707929) (not e!603239))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93710 (= res!707929 (validMask!0 mask!1515))))

(assert (=> start!93710 e!603239))

(assert (=> start!93710 true))

(declare-datatypes ((V!38441 0))(
  ( (V!38442 (val!12540 Int)) )
))
(declare-datatypes ((ValueCell!11786 0))(
  ( (ValueCellFull!11786 (v!15151 V!38441)) (EmptyCell!11786) )
))
(declare-datatypes ((array!66964 0))(
  ( (array!66965 (arr!32188 (Array (_ BitVec 32) ValueCell!11786)) (size!32725 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66964)

(declare-fun e!603238 () Bool)

(declare-fun array_inv!24798 (array!66964) Bool)

(assert (=> start!93710 (and (array_inv!24798 _values!955) e!603238)))

(declare-datatypes ((array!66966 0))(
  ( (array!66967 (arr!32189 (Array (_ BitVec 32) (_ BitVec 64))) (size!32726 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66966)

(declare-fun array_inv!24799 (array!66966) Bool)

(assert (=> start!93710 (array_inv!24799 _keys!1163)))

(declare-fun b!1059685 () Bool)

(declare-fun e!603240 () Bool)

(declare-fun tp_is_empty!24979 () Bool)

(assert (=> b!1059685 (= e!603240 tp_is_empty!24979)))

(declare-fun mapNonEmpty!39133 () Bool)

(declare-fun mapRes!39133 () Bool)

(declare-fun tp!74940 () Bool)

(assert (=> mapNonEmpty!39133 (= mapRes!39133 (and tp!74940 e!603240))))

(declare-fun mapRest!39133 () (Array (_ BitVec 32) ValueCell!11786))

(declare-fun mapValue!39133 () ValueCell!11786)

(declare-fun mapKey!39133 () (_ BitVec 32))

(assert (=> mapNonEmpty!39133 (= (arr!32188 _values!955) (store mapRest!39133 mapKey!39133 mapValue!39133))))

(declare-fun b!1059686 () Bool)

(declare-fun res!707931 () Bool)

(assert (=> b!1059686 (=> (not res!707931) (not e!603239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66966 (_ BitVec 32)) Bool)

(assert (=> b!1059686 (= res!707931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39133 () Bool)

(assert (=> mapIsEmpty!39133 mapRes!39133))

(declare-fun b!1059687 () Bool)

(declare-fun res!707930 () Bool)

(assert (=> b!1059687 (=> (not res!707930) (not e!603239))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059687 (= res!707930 (and (= (size!32725 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32726 _keys!1163) (size!32725 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059688 () Bool)

(declare-fun e!603241 () Bool)

(assert (=> b!1059688 (= e!603238 (and e!603241 mapRes!39133))))

(declare-fun condMapEmpty!39133 () Bool)

(declare-fun mapDefault!39133 () ValueCell!11786)

