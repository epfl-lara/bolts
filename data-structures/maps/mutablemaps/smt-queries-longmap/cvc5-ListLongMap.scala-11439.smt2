; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133464 () Bool)

(assert start!133464)

(declare-fun b!1559771 () Bool)

(declare-fun e!869143 () Bool)

(assert (=> b!1559771 (= e!869143 false)))

(declare-fun lt!670851 () Bool)

(declare-datatypes ((V!59561 0))(
  ( (V!59562 (val!19341 Int)) )
))
(declare-datatypes ((tuple2!25156 0))(
  ( (tuple2!25157 (_1!12588 (_ BitVec 64)) (_2!12588 V!59561)) )
))
(declare-datatypes ((List!36513 0))(
  ( (Nil!36510) (Cons!36509 (h!37956 tuple2!25156) (t!51253 List!36513)) )
))
(declare-datatypes ((ListLongMap!22603 0))(
  ( (ListLongMap!22604 (toList!11317 List!36513)) )
))
(declare-fun contains!10237 (ListLongMap!22603 (_ BitVec 64)) Bool)

(assert (=> b!1559771 (= lt!670851 (contains!10237 (ListLongMap!22604 Nil!36510) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559772 () Bool)

(declare-fun res!1066706 () Bool)

(assert (=> b!1559772 (=> (not res!1066706) (not e!869143))))

(declare-datatypes ((array!103709 0))(
  ( (array!103710 (arr!50042 (Array (_ BitVec 32) (_ BitVec 64))) (size!50593 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103709)

(declare-datatypes ((List!36514 0))(
  ( (Nil!36511) (Cons!36510 (h!37957 (_ BitVec 64)) (t!51254 List!36514)) )
))
(declare-fun arrayNoDuplicates!0 (array!103709 (_ BitVec 32) List!36514) Bool)

(assert (=> b!1559772 (= res!1066706 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36511))))

(declare-fun res!1066705 () Bool)

(assert (=> start!133464 (=> (not res!1066705) (not e!869143))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133464 (= res!1066705 (validMask!0 mask!947))))

(assert (=> start!133464 e!869143))

(assert (=> start!133464 true))

(declare-fun array_inv!38821 (array!103709) Bool)

(assert (=> start!133464 (array_inv!38821 _keys!637)))

(declare-datatypes ((ValueCell!18227 0))(
  ( (ValueCellFull!18227 (v!22090 V!59561)) (EmptyCell!18227) )
))
(declare-datatypes ((array!103711 0))(
  ( (array!103712 (arr!50043 (Array (_ BitVec 32) ValueCell!18227)) (size!50594 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103711)

(declare-fun e!869144 () Bool)

(declare-fun array_inv!38822 (array!103711) Bool)

(assert (=> start!133464 (and (array_inv!38822 _values!487) e!869144)))

(declare-fun mapIsEmpty!59148 () Bool)

(declare-fun mapRes!59148 () Bool)

(assert (=> mapIsEmpty!59148 mapRes!59148))

(declare-fun b!1559773 () Bool)

(declare-fun e!869146 () Bool)

(declare-fun tp_is_empty!38515 () Bool)

(assert (=> b!1559773 (= e!869146 tp_is_empty!38515)))

(declare-fun b!1559774 () Bool)

(declare-fun res!1066703 () Bool)

(assert (=> b!1559774 (=> (not res!1066703) (not e!869143))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559774 (= res!1066703 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50593 _keys!637)) (bvsge from!782 (size!50593 _keys!637))))))

(declare-fun b!1559775 () Bool)

(declare-fun res!1066704 () Bool)

(assert (=> b!1559775 (=> (not res!1066704) (not e!869143))))

(assert (=> b!1559775 (= res!1066704 (not (contains!10237 (ListLongMap!22604 Nil!36510) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559776 () Bool)

(declare-fun res!1066701 () Bool)

(assert (=> b!1559776 (=> (not res!1066701) (not e!869143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103709 (_ BitVec 32)) Bool)

(assert (=> b!1559776 (= res!1066701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59148 () Bool)

(declare-fun tp!112804 () Bool)

(declare-fun e!869147 () Bool)

(assert (=> mapNonEmpty!59148 (= mapRes!59148 (and tp!112804 e!869147))))

(declare-fun mapKey!59148 () (_ BitVec 32))

(declare-fun mapValue!59148 () ValueCell!18227)

(declare-fun mapRest!59148 () (Array (_ BitVec 32) ValueCell!18227))

(assert (=> mapNonEmpty!59148 (= (arr!50043 _values!487) (store mapRest!59148 mapKey!59148 mapValue!59148))))

(declare-fun b!1559777 () Bool)

(assert (=> b!1559777 (= e!869147 tp_is_empty!38515)))

(declare-fun b!1559778 () Bool)

(declare-fun res!1066702 () Bool)

(assert (=> b!1559778 (=> (not res!1066702) (not e!869143))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559778 (= res!1066702 (and (= (size!50594 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50593 _keys!637) (size!50594 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559779 () Bool)

(assert (=> b!1559779 (= e!869144 (and e!869146 mapRes!59148))))

(declare-fun condMapEmpty!59148 () Bool)

(declare-fun mapDefault!59148 () ValueCell!18227)

