; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93696 () Bool)

(assert start!93696)

(declare-fun b!1059559 () Bool)

(declare-fun res!707867 () Bool)

(declare-fun e!603137 () Bool)

(assert (=> b!1059559 (=> (not res!707867) (not e!603137))))

(declare-datatypes ((array!66936 0))(
  ( (array!66937 (arr!32174 (Array (_ BitVec 32) (_ BitVec 64))) (size!32711 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66936)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66936 (_ BitVec 32)) Bool)

(assert (=> b!1059559 (= res!707867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!707868 () Bool)

(assert (=> start!93696 (=> (not res!707868) (not e!603137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93696 (= res!707868 (validMask!0 mask!1515))))

(assert (=> start!93696 e!603137))

(assert (=> start!93696 true))

(declare-datatypes ((V!38421 0))(
  ( (V!38422 (val!12533 Int)) )
))
(declare-datatypes ((ValueCell!11779 0))(
  ( (ValueCellFull!11779 (v!15144 V!38421)) (EmptyCell!11779) )
))
(declare-datatypes ((array!66938 0))(
  ( (array!66939 (arr!32175 (Array (_ BitVec 32) ValueCell!11779)) (size!32712 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66938)

(declare-fun e!603135 () Bool)

(declare-fun array_inv!24786 (array!66938) Bool)

(assert (=> start!93696 (and (array_inv!24786 _values!955) e!603135)))

(declare-fun array_inv!24787 (array!66936) Bool)

(assert (=> start!93696 (array_inv!24787 _keys!1163)))

(declare-fun b!1059560 () Bool)

(declare-fun e!603134 () Bool)

(declare-fun tp_is_empty!24965 () Bool)

(assert (=> b!1059560 (= e!603134 tp_is_empty!24965)))

(declare-fun b!1059561 () Bool)

(assert (=> b!1059561 (= e!603137 false)))

(declare-fun lt!467129 () Bool)

(declare-datatypes ((List!22556 0))(
  ( (Nil!22553) (Cons!22552 (h!23761 (_ BitVec 64)) (t!31870 List!22556)) )
))
(declare-fun arrayNoDuplicates!0 (array!66936 (_ BitVec 32) List!22556) Bool)

(assert (=> b!1059561 (= lt!467129 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22553))))

(declare-fun mapNonEmpty!39112 () Bool)

(declare-fun mapRes!39112 () Bool)

(declare-fun tp!74919 () Bool)

(declare-fun e!603136 () Bool)

(assert (=> mapNonEmpty!39112 (= mapRes!39112 (and tp!74919 e!603136))))

(declare-fun mapValue!39112 () ValueCell!11779)

(declare-fun mapKey!39112 () (_ BitVec 32))

(declare-fun mapRest!39112 () (Array (_ BitVec 32) ValueCell!11779))

(assert (=> mapNonEmpty!39112 (= (arr!32175 _values!955) (store mapRest!39112 mapKey!39112 mapValue!39112))))

(declare-fun b!1059562 () Bool)

(declare-fun res!707866 () Bool)

(assert (=> b!1059562 (=> (not res!707866) (not e!603137))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059562 (= res!707866 (and (= (size!32712 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32711 _keys!1163) (size!32712 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059563 () Bool)

(assert (=> b!1059563 (= e!603136 tp_is_empty!24965)))

(declare-fun b!1059564 () Bool)

(assert (=> b!1059564 (= e!603135 (and e!603134 mapRes!39112))))

(declare-fun condMapEmpty!39112 () Bool)

(declare-fun mapDefault!39112 () ValueCell!11779)

