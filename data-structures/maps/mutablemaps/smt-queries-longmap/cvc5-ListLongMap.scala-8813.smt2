; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107138 () Bool)

(assert start!107138)

(declare-fun b_free!27607 () Bool)

(declare-fun b_next!27607 () Bool)

(assert (=> start!107138 (= b_free!27607 (not b_next!27607))))

(declare-fun tp!97049 () Bool)

(declare-fun b_and!45649 () Bool)

(assert (=> start!107138 (= tp!97049 b_and!45649)))

(declare-fun b!1269721 () Bool)

(declare-fun e!723742 () Bool)

(declare-fun e!723741 () Bool)

(declare-fun mapRes!50767 () Bool)

(assert (=> b!1269721 (= e!723742 (and e!723741 mapRes!50767))))

(declare-fun condMapEmpty!50767 () Bool)

(declare-datatypes ((V!48915 0))(
  ( (V!48916 (val!16470 Int)) )
))
(declare-datatypes ((ValueCell!15542 0))(
  ( (ValueCellFull!15542 (v!19105 V!48915)) (EmptyCell!15542) )
))
(declare-datatypes ((array!82817 0))(
  ( (array!82818 (arr!39941 (Array (_ BitVec 32) ValueCell!15542)) (size!40478 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82817)

(declare-fun mapDefault!50767 () ValueCell!15542)

