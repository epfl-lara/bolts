; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82614 () Bool)

(assert start!82614)

(declare-fun b_free!18719 () Bool)

(declare-fun b_next!18719 () Bool)

(assert (=> start!82614 (= b_free!18719 (not b_next!18719))))

(declare-fun tp!65277 () Bool)

(declare-fun b_and!30225 () Bool)

(assert (=> start!82614 (= tp!65277 b_and!30225)))

(declare-fun res!644133 () Bool)

(declare-fun e!542727 () Bool)

(assert (=> start!82614 (=> (not res!644133) (not e!542727))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82614 (= res!644133 (validMask!0 mask!2110))))

(assert (=> start!82614 e!542727))

(assert (=> start!82614 true))

(declare-datatypes ((V!33677 0))(
  ( (V!33678 (val!10811 Int)) )
))
(declare-datatypes ((ValueCell!10279 0))(
  ( (ValueCellFull!10279 (v!13369 V!33677)) (EmptyCell!10279) )
))
(declare-datatypes ((array!59121 0))(
  ( (array!59122 (arr!28425 (Array (_ BitVec 32) ValueCell!10279)) (size!28905 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59121)

(declare-fun e!542728 () Bool)

(declare-fun array_inv!21949 (array!59121) Bool)

(assert (=> start!82614 (and (array_inv!21949 _values!1400) e!542728)))

(declare-datatypes ((array!59123 0))(
  ( (array!59124 (arr!28426 (Array (_ BitVec 32) (_ BitVec 64))) (size!28906 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59123)

(declare-fun array_inv!21950 (array!59123) Bool)

(assert (=> start!82614 (array_inv!21950 _keys!1686)))

(assert (=> start!82614 tp!65277))

(declare-fun tp_is_empty!21521 () Bool)

(assert (=> start!82614 tp_is_empty!21521))

(declare-fun mapIsEmpty!34276 () Bool)

(declare-fun mapRes!34276 () Bool)

(assert (=> mapIsEmpty!34276 mapRes!34276))

(declare-fun b!962342 () Bool)

(declare-fun res!644136 () Bool)

(assert (=> b!962342 (=> (not res!644136) (not e!542727))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962342 (= res!644136 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28906 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28906 _keys!1686))))))

(declare-fun b!962343 () Bool)

(declare-fun res!644137 () Bool)

(assert (=> b!962343 (=> (not res!644137) (not e!542727))))

(declare-datatypes ((List!19850 0))(
  ( (Nil!19847) (Cons!19846 (h!21008 (_ BitVec 64)) (t!28221 List!19850)) )
))
(declare-fun arrayNoDuplicates!0 (array!59123 (_ BitVec 32) List!19850) Bool)

(assert (=> b!962343 (= res!644137 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19847))))

(declare-fun b!962344 () Bool)

(declare-fun e!542724 () Bool)

(assert (=> b!962344 (= e!542724 tp_is_empty!21521)))

(declare-fun b!962345 () Bool)

(declare-fun e!542725 () Bool)

(assert (=> b!962345 (= e!542728 (and e!542725 mapRes!34276))))

(declare-fun condMapEmpty!34276 () Bool)

(declare-fun mapDefault!34276 () ValueCell!10279)

