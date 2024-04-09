; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82350 () Bool)

(assert start!82350)

(declare-fun b_free!18589 () Bool)

(declare-fun b_next!18589 () Bool)

(assert (=> start!82350 (= b_free!18589 (not b_next!18589))))

(declare-fun tp!64737 () Bool)

(declare-fun b_and!30095 () Bool)

(assert (=> start!82350 (= tp!64737 b_and!30095)))

(declare-fun mapIsEmpty!33931 () Bool)

(declare-fun mapRes!33931 () Bool)

(assert (=> mapIsEmpty!33931 mapRes!33931))

(declare-fun b!959624 () Bool)

(declare-fun res!642469 () Bool)

(declare-fun e!540979 () Bool)

(assert (=> b!959624 (=> (not res!642469) (not e!540979))))

(declare-datatypes ((array!58709 0))(
  ( (array!58710 (arr!28224 (Array (_ BitVec 32) (_ BitVec 64))) (size!28704 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58709)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58709 (_ BitVec 32)) Bool)

(assert (=> b!959624 (= res!642469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959626 () Bool)

(declare-fun res!642473 () Bool)

(assert (=> b!959626 (=> (not res!642473) (not e!540979))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959626 (= res!642473 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28704 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28704 _keys!1668))))))

(declare-fun b!959627 () Bool)

(declare-fun e!540980 () Bool)

(declare-fun tp_is_empty!21301 () Bool)

(assert (=> b!959627 (= e!540980 tp_is_empty!21301)))

(declare-fun b!959628 () Bool)

(declare-fun e!540981 () Bool)

(assert (=> b!959628 (= e!540981 (and e!540980 mapRes!33931))))

(declare-fun condMapEmpty!33931 () Bool)

(declare-datatypes ((V!33385 0))(
  ( (V!33386 (val!10701 Int)) )
))
(declare-datatypes ((ValueCell!10169 0))(
  ( (ValueCellFull!10169 (v!13258 V!33385)) (EmptyCell!10169) )
))
(declare-datatypes ((array!58711 0))(
  ( (array!58712 (arr!28225 (Array (_ BitVec 32) ValueCell!10169)) (size!28705 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58711)

(declare-fun mapDefault!33931 () ValueCell!10169)

