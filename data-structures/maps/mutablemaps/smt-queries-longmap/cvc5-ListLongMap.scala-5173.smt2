; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70048 () Bool)

(assert start!70048)

(declare-fun b_free!12445 () Bool)

(declare-fun b_next!12445 () Bool)

(assert (=> start!70048 (= b_free!12445 (not b_next!12445))))

(declare-fun tp!44050 () Bool)

(declare-fun b_and!21235 () Bool)

(assert (=> start!70048 (= tp!44050 b_and!21235)))

(declare-fun mapIsEmpty!22813 () Bool)

(declare-fun mapRes!22813 () Bool)

(assert (=> mapIsEmpty!22813 mapRes!22813))

(declare-fun b!813668 () Bool)

(declare-fun res!555939 () Bool)

(declare-fun e!450962 () Bool)

(assert (=> b!813668 (=> (not res!555939) (not e!450962))))

(declare-datatypes ((array!44500 0))(
  ( (array!44501 (arr!21306 (Array (_ BitVec 32) (_ BitVec 64))) (size!21727 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44500)

(declare-datatypes ((List!15214 0))(
  ( (Nil!15211) (Cons!15210 (h!16339 (_ BitVec 64)) (t!21539 List!15214)) )
))
(declare-fun arrayNoDuplicates!0 (array!44500 (_ BitVec 32) List!15214) Bool)

(assert (=> b!813668 (= res!555939 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15211))))

(declare-fun b!813669 () Bool)

(declare-fun res!555941 () Bool)

(assert (=> b!813669 (=> (not res!555941) (not e!450962))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23875 0))(
  ( (V!23876 (val!7125 Int)) )
))
(declare-datatypes ((ValueCell!6662 0))(
  ( (ValueCellFull!6662 (v!9548 V!23875)) (EmptyCell!6662) )
))
(declare-datatypes ((array!44502 0))(
  ( (array!44503 (arr!21307 (Array (_ BitVec 32) ValueCell!6662)) (size!21728 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44502)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813669 (= res!555941 (and (= (size!21728 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21727 _keys!976) (size!21728 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813671 () Bool)

(declare-fun res!555938 () Bool)

(assert (=> b!813671 (=> (not res!555938) (not e!450962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44500 (_ BitVec 32)) Bool)

(assert (=> b!813671 (= res!555938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813672 () Bool)

(declare-fun e!450961 () Bool)

(declare-fun e!450964 () Bool)

(assert (=> b!813672 (= e!450961 (and e!450964 mapRes!22813))))

(declare-fun condMapEmpty!22813 () Bool)

(declare-fun mapDefault!22813 () ValueCell!6662)

