; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93668 () Bool)

(assert start!93668)

(declare-fun b!1059307 () Bool)

(declare-fun e!602927 () Bool)

(declare-fun tp_is_empty!24937 () Bool)

(assert (=> b!1059307 (= e!602927 tp_is_empty!24937)))

(declare-fun b!1059308 () Bool)

(declare-fun e!602926 () Bool)

(assert (=> b!1059308 (= e!602926 tp_is_empty!24937)))

(declare-fun b!1059309 () Bool)

(declare-fun e!602923 () Bool)

(assert (=> b!1059309 (= e!602923 false)))

(declare-fun lt!467087 () Bool)

(declare-datatypes ((array!66884 0))(
  ( (array!66885 (arr!32148 (Array (_ BitVec 32) (_ BitVec 64))) (size!32685 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66884)

(declare-datatypes ((List!22546 0))(
  ( (Nil!22543) (Cons!22542 (h!23751 (_ BitVec 64)) (t!31860 List!22546)) )
))
(declare-fun arrayNoDuplicates!0 (array!66884 (_ BitVec 32) List!22546) Bool)

(assert (=> b!1059309 (= lt!467087 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22543))))

(declare-fun b!1059310 () Bool)

(declare-fun res!707741 () Bool)

(assert (=> b!1059310 (=> (not res!707741) (not e!602923))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38385 0))(
  ( (V!38386 (val!12519 Int)) )
))
(declare-datatypes ((ValueCell!11765 0))(
  ( (ValueCellFull!11765 (v!15130 V!38385)) (EmptyCell!11765) )
))
(declare-datatypes ((array!66886 0))(
  ( (array!66887 (arr!32149 (Array (_ BitVec 32) ValueCell!11765)) (size!32686 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66886)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059310 (= res!707741 (and (= (size!32686 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32685 _keys!1163) (size!32686 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39070 () Bool)

(declare-fun mapRes!39070 () Bool)

(declare-fun tp!74877 () Bool)

(assert (=> mapNonEmpty!39070 (= mapRes!39070 (and tp!74877 e!602926))))

(declare-fun mapValue!39070 () ValueCell!11765)

(declare-fun mapKey!39070 () (_ BitVec 32))

(declare-fun mapRest!39070 () (Array (_ BitVec 32) ValueCell!11765))

(assert (=> mapNonEmpty!39070 (= (arr!32149 _values!955) (store mapRest!39070 mapKey!39070 mapValue!39070))))

(declare-fun b!1059311 () Bool)

(declare-fun res!707742 () Bool)

(assert (=> b!1059311 (=> (not res!707742) (not e!602923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66884 (_ BitVec 32)) Bool)

(assert (=> b!1059311 (= res!707742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!707740 () Bool)

(assert (=> start!93668 (=> (not res!707740) (not e!602923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93668 (= res!707740 (validMask!0 mask!1515))))

(assert (=> start!93668 e!602923))

(assert (=> start!93668 true))

(declare-fun e!602925 () Bool)

(declare-fun array_inv!24764 (array!66886) Bool)

(assert (=> start!93668 (and (array_inv!24764 _values!955) e!602925)))

(declare-fun array_inv!24765 (array!66884) Bool)

(assert (=> start!93668 (array_inv!24765 _keys!1163)))

(declare-fun b!1059312 () Bool)

(assert (=> b!1059312 (= e!602925 (and e!602927 mapRes!39070))))

(declare-fun condMapEmpty!39070 () Bool)

(declare-fun mapDefault!39070 () ValueCell!11765)

