; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93882 () Bool)

(assert start!93882)

(declare-fun b_free!21319 () Bool)

(declare-fun b_next!21319 () Bool)

(assert (=> start!93882 (= b_free!21319 (not b_next!21319))))

(declare-fun tp!75381 () Bool)

(declare-fun b_and!34051 () Bool)

(assert (=> start!93882 (= tp!75381 b_and!34051)))

(declare-fun b!1061361 () Bool)

(declare-fun res!708864 () Bool)

(declare-fun e!604442 () Bool)

(assert (=> b!1061361 (=> (not res!708864) (not e!604442))))

(declare-datatypes ((array!67242 0))(
  ( (array!67243 (arr!32325 (Array (_ BitVec 32) (_ BitVec 64))) (size!32862 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67242)

(declare-datatypes ((List!22652 0))(
  ( (Nil!22649) (Cons!22648 (h!23857 (_ BitVec 64)) (t!31968 List!22652)) )
))
(declare-fun arrayNoDuplicates!0 (array!67242 (_ BitVec 32) List!22652) Bool)

(assert (=> b!1061361 (= res!708864 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22649))))

(declare-fun res!708867 () Bool)

(assert (=> start!93882 (=> (not res!708867) (not e!604442))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93882 (= res!708867 (validMask!0 mask!1515))))

(assert (=> start!93882 e!604442))

(assert (=> start!93882 true))

(declare-fun tp_is_empty!25129 () Bool)

(assert (=> start!93882 tp_is_empty!25129))

(declare-datatypes ((V!38641 0))(
  ( (V!38642 (val!12615 Int)) )
))
(declare-datatypes ((ValueCell!11861 0))(
  ( (ValueCellFull!11861 (v!15226 V!38641)) (EmptyCell!11861) )
))
(declare-datatypes ((array!67244 0))(
  ( (array!67245 (arr!32326 (Array (_ BitVec 32) ValueCell!11861)) (size!32863 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67244)

(declare-fun e!604440 () Bool)

(declare-fun array_inv!24888 (array!67244) Bool)

(assert (=> start!93882 (and (array_inv!24888 _values!955) e!604440)))

(assert (=> start!93882 tp!75381))

(declare-fun array_inv!24889 (array!67242) Bool)

(assert (=> start!93882 (array_inv!24889 _keys!1163)))

(declare-fun mapIsEmpty!39364 () Bool)

(declare-fun mapRes!39364 () Bool)

(assert (=> mapIsEmpty!39364 mapRes!39364))

(declare-fun b!1061362 () Bool)

(declare-fun res!708866 () Bool)

(assert (=> b!1061362 (=> (not res!708866) (not e!604442))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061362 (= res!708866 (and (= (size!32863 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32862 _keys!1163) (size!32863 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061363 () Bool)

(declare-fun e!604441 () Bool)

(assert (=> b!1061363 (= e!604441 tp_is_empty!25129)))

(declare-fun b!1061364 () Bool)

(declare-fun e!604438 () Bool)

(assert (=> b!1061364 (= e!604438 tp_is_empty!25129)))

(declare-fun b!1061365 () Bool)

(declare-fun res!708865 () Bool)

(assert (=> b!1061365 (=> (not res!708865) (not e!604442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67242 (_ BitVec 32)) Bool)

(assert (=> b!1061365 (= res!708865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39364 () Bool)

(declare-fun tp!75380 () Bool)

(assert (=> mapNonEmpty!39364 (= mapRes!39364 (and tp!75380 e!604441))))

(declare-fun mapValue!39364 () ValueCell!11861)

(declare-fun mapRest!39364 () (Array (_ BitVec 32) ValueCell!11861))

(declare-fun mapKey!39364 () (_ BitVec 32))

(assert (=> mapNonEmpty!39364 (= (arr!32326 _values!955) (store mapRest!39364 mapKey!39364 mapValue!39364))))

(declare-fun b!1061366 () Bool)

(assert (=> b!1061366 (= e!604440 (and e!604438 mapRes!39364))))

(declare-fun condMapEmpty!39364 () Bool)

(declare-fun mapDefault!39364 () ValueCell!11861)

