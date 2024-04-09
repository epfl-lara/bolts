; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82288 () Bool)

(assert start!82288)

(declare-fun b_free!18533 () Bool)

(declare-fun b_next!18533 () Bool)

(assert (=> start!82288 (= b_free!18533 (not b_next!18533))))

(declare-fun tp!64561 () Bool)

(declare-fun b_and!30039 () Bool)

(assert (=> start!82288 (= tp!64561 b_and!30039)))

(declare-fun b!958732 () Bool)

(declare-fun e!540515 () Bool)

(declare-fun tp_is_empty!21239 () Bool)

(assert (=> b!958732 (= e!540515 tp_is_empty!21239)))

(declare-fun b!958733 () Bool)

(declare-fun res!641856 () Bool)

(declare-fun e!540518 () Bool)

(assert (=> b!958733 (=> (not res!641856) (not e!540518))))

(declare-datatypes ((array!58591 0))(
  ( (array!58592 (arr!28165 (Array (_ BitVec 32) (_ BitVec 64))) (size!28645 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58591)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958733 (= res!641856 (validKeyInArray!0 (select (arr!28165 _keys!1668) i!793)))))

(declare-fun b!958734 () Bool)

(declare-fun res!641860 () Bool)

(assert (=> b!958734 (=> (not res!641860) (not e!540518))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33301 0))(
  ( (V!33302 (val!10670 Int)) )
))
(declare-datatypes ((ValueCell!10138 0))(
  ( (ValueCellFull!10138 (v!13227 V!33301)) (EmptyCell!10138) )
))
(declare-datatypes ((array!58593 0))(
  ( (array!58594 (arr!28166 (Array (_ BitVec 32) ValueCell!10138)) (size!28646 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58593)

(assert (=> b!958734 (= res!641860 (and (= (size!28646 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28645 _keys!1668) (size!28646 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!641862 () Bool)

(assert (=> start!82288 (=> (not res!641862) (not e!540518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82288 (= res!641862 (validMask!0 mask!2088))))

(assert (=> start!82288 e!540518))

(assert (=> start!82288 true))

(assert (=> start!82288 tp_is_empty!21239))

(declare-fun array_inv!21783 (array!58591) Bool)

(assert (=> start!82288 (array_inv!21783 _keys!1668)))

(declare-fun e!540516 () Bool)

(declare-fun array_inv!21784 (array!58593) Bool)

(assert (=> start!82288 (and (array_inv!21784 _values!1386) e!540516)))

(assert (=> start!82288 tp!64561))

(declare-fun b!958735 () Bool)

(declare-fun res!641859 () Bool)

(assert (=> b!958735 (=> (not res!641859) (not e!540518))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958735 (= res!641859 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28645 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28645 _keys!1668))))))

(declare-fun b!958736 () Bool)

(declare-fun res!641857 () Bool)

(assert (=> b!958736 (=> (not res!641857) (not e!540518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58591 (_ BitVec 32)) Bool)

(assert (=> b!958736 (= res!641857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958737 () Bool)

(declare-fun mapRes!33838 () Bool)

(assert (=> b!958737 (= e!540516 (and e!540515 mapRes!33838))))

(declare-fun condMapEmpty!33838 () Bool)

(declare-fun mapDefault!33838 () ValueCell!10138)

