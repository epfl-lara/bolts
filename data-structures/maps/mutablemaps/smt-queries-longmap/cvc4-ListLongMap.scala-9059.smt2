; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109178 () Bool)

(assert start!109178)

(declare-fun b_free!28631 () Bool)

(declare-fun b_next!28631 () Bool)

(assert (=> start!109178 (= b_free!28631 (not b_next!28631))))

(declare-fun tp!101013 () Bool)

(declare-fun b_and!46731 () Bool)

(assert (=> start!109178 (= tp!101013 b_and!46731)))

(declare-fun b!1290543 () Bool)

(declare-fun res!857447 () Bool)

(declare-fun e!736790 () Bool)

(assert (=> b!1290543 (=> (not res!857447) (not e!736790))))

(declare-datatypes ((array!85539 0))(
  ( (array!85540 (arr!41266 (Array (_ BitVec 32) (_ BitVec 64))) (size!41817 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85539)

(declare-datatypes ((List!29450 0))(
  ( (Nil!29447) (Cons!29446 (h!30655 (_ BitVec 64)) (t!43021 List!29450)) )
))
(declare-fun arrayNoDuplicates!0 (array!85539 (_ BitVec 32) List!29450) Bool)

(assert (=> b!1290543 (= res!857447 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29447))))

(declare-fun b!1290544 () Bool)

(declare-fun res!857440 () Bool)

(assert (=> b!1290544 (=> (not res!857440) (not e!736790))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1290544 (= res!857440 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41817 _keys!1741))))))

(declare-fun b!1290545 () Bool)

(declare-fun res!857441 () Bool)

(assert (=> b!1290545 (=> (not res!857441) (not e!736790))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85539 (_ BitVec 32)) Bool)

(assert (=> b!1290545 (= res!857441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52967 () Bool)

(declare-fun mapRes!52967 () Bool)

(declare-fun tp!101012 () Bool)

(declare-fun e!736791 () Bool)

(assert (=> mapNonEmpty!52967 (= mapRes!52967 (and tp!101012 e!736791))))

(declare-datatypes ((V!50797 0))(
  ( (V!50798 (val!17210 Int)) )
))
(declare-datatypes ((ValueCell!16237 0))(
  ( (ValueCellFull!16237 (v!19811 V!50797)) (EmptyCell!16237) )
))
(declare-fun mapRest!52967 () (Array (_ BitVec 32) ValueCell!16237))

(declare-fun mapKey!52967 () (_ BitVec 32))

(declare-datatypes ((array!85541 0))(
  ( (array!85542 (arr!41267 (Array (_ BitVec 32) ValueCell!16237)) (size!41818 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85541)

(declare-fun mapValue!52967 () ValueCell!16237)

(assert (=> mapNonEmpty!52967 (= (arr!41267 _values!1445) (store mapRest!52967 mapKey!52967 mapValue!52967))))

(declare-fun b!1290546 () Bool)

(declare-fun e!736792 () Bool)

(declare-fun e!736794 () Bool)

(assert (=> b!1290546 (= e!736792 (and e!736794 mapRes!52967))))

(declare-fun condMapEmpty!52967 () Bool)

(declare-fun mapDefault!52967 () ValueCell!16237)

