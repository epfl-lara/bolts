; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107208 () Bool)

(assert start!107208)

(declare-fun b!1270473 () Bool)

(declare-fun e!724268 () Bool)

(declare-fun tp_is_empty!32861 () Bool)

(assert (=> b!1270473 (= e!724268 tp_is_empty!32861)))

(declare-fun mapNonEmpty!50872 () Bool)

(declare-fun mapRes!50872 () Bool)

(declare-fun tp!97214 () Bool)

(declare-fun e!724267 () Bool)

(assert (=> mapNonEmpty!50872 (= mapRes!50872 (and tp!97214 e!724267))))

(declare-datatypes ((V!49007 0))(
  ( (V!49008 (val!16505 Int)) )
))
(declare-datatypes ((ValueCell!15577 0))(
  ( (ValueCellFull!15577 (v!19140 V!49007)) (EmptyCell!15577) )
))
(declare-datatypes ((array!82949 0))(
  ( (array!82950 (arr!40007 (Array (_ BitVec 32) ValueCell!15577)) (size!40544 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82949)

(declare-fun mapRest!50872 () (Array (_ BitVec 32) ValueCell!15577))

(declare-fun mapKey!50872 () (_ BitVec 32))

(declare-fun mapValue!50872 () ValueCell!15577)

(assert (=> mapNonEmpty!50872 (= (arr!40007 _values!1134) (store mapRest!50872 mapKey!50872 mapValue!50872))))

(declare-fun b!1270474 () Bool)

(assert (=> b!1270474 (= e!724267 tp_is_empty!32861)))

(declare-fun b!1270475 () Bool)

(declare-fun res!845500 () Bool)

(declare-fun e!724264 () Bool)

(assert (=> b!1270475 (=> (not res!845500) (not e!724264))))

(declare-datatypes ((array!82951 0))(
  ( (array!82952 (arr!40008 (Array (_ BitVec 32) (_ BitVec 64))) (size!40545 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82951)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82951 (_ BitVec 32)) Bool)

(assert (=> b!1270475 (= res!845500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!845501 () Bool)

(assert (=> start!107208 (=> (not res!845501) (not e!724264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107208 (= res!845501 (validMask!0 mask!1730))))

(assert (=> start!107208 e!724264))

(declare-fun e!724265 () Bool)

(declare-fun array_inv!30383 (array!82949) Bool)

(assert (=> start!107208 (and (array_inv!30383 _values!1134) e!724265)))

(assert (=> start!107208 true))

(declare-fun array_inv!30384 (array!82951) Bool)

(assert (=> start!107208 (array_inv!30384 _keys!1364)))

(declare-fun mapIsEmpty!50872 () Bool)

(assert (=> mapIsEmpty!50872 mapRes!50872))

(declare-fun b!1270476 () Bool)

(assert (=> b!1270476 (= e!724265 (and e!724268 mapRes!50872))))

(declare-fun condMapEmpty!50872 () Bool)

(declare-fun mapDefault!50872 () ValueCell!15577)

