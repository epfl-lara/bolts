; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70722 () Bool)

(assert start!70722)

(declare-fun b_free!12971 () Bool)

(declare-fun b_next!12971 () Bool)

(assert (=> start!70722 (= b_free!12971 (not b_next!12971))))

(declare-fun tp!45655 () Bool)

(declare-fun b_and!21851 () Bool)

(assert (=> start!70722 (= tp!45655 b_and!21851)))

(declare-fun b!821010 () Bool)

(declare-fun res!560203 () Bool)

(declare-fun e!456265 () Bool)

(assert (=> b!821010 (=> (not res!560203) (not e!456265))))

(declare-datatypes ((array!45520 0))(
  ( (array!45521 (arr!21807 (Array (_ BitVec 32) (_ BitVec 64))) (size!22228 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45520)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45520 (_ BitVec 32)) Bool)

(assert (=> b!821010 (= res!560203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821011 () Bool)

(declare-fun res!560202 () Bool)

(assert (=> b!821011 (=> (not res!560202) (not e!456265))))

(declare-datatypes ((List!15598 0))(
  ( (Nil!15595) (Cons!15594 (h!16723 (_ BitVec 64)) (t!21941 List!15598)) )
))
(declare-fun arrayNoDuplicates!0 (array!45520 (_ BitVec 32) List!15598) Bool)

(assert (=> b!821011 (= res!560202 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15595))))

(declare-fun b!821012 () Bool)

(declare-fun res!560200 () Bool)

(assert (=> b!821012 (=> (not res!560200) (not e!456265))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24575 0))(
  ( (V!24576 (val!7388 Int)) )
))
(declare-datatypes ((ValueCell!6925 0))(
  ( (ValueCellFull!6925 (v!9815 V!24575)) (EmptyCell!6925) )
))
(declare-datatypes ((array!45522 0))(
  ( (array!45523 (arr!21808 (Array (_ BitVec 32) ValueCell!6925)) (size!22229 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45522)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821012 (= res!560200 (and (= (size!22229 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22228 _keys!976) (size!22229 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!560199 () Bool)

(assert (=> start!70722 (=> (not res!560199) (not e!456265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70722 (= res!560199 (validMask!0 mask!1312))))

(assert (=> start!70722 e!456265))

(declare-fun tp_is_empty!14681 () Bool)

(assert (=> start!70722 tp_is_empty!14681))

(declare-fun array_inv!17395 (array!45520) Bool)

(assert (=> start!70722 (array_inv!17395 _keys!976)))

(assert (=> start!70722 true))

(declare-fun e!456264 () Bool)

(declare-fun array_inv!17396 (array!45522) Bool)

(assert (=> start!70722 (and (array_inv!17396 _values!788) e!456264)))

(assert (=> start!70722 tp!45655))

(declare-fun mapIsEmpty!23629 () Bool)

(declare-fun mapRes!23629 () Bool)

(assert (=> mapIsEmpty!23629 mapRes!23629))

(declare-fun b!821013 () Bool)

(declare-fun e!456267 () Bool)

(assert (=> b!821013 (= e!456264 (and e!456267 mapRes!23629))))

(declare-fun condMapEmpty!23629 () Bool)

(declare-fun mapDefault!23629 () ValueCell!6925)

