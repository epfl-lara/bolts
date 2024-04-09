; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82626 () Bool)

(assert start!82626)

(declare-fun b_free!18731 () Bool)

(declare-fun b_next!18731 () Bool)

(assert (=> start!82626 (= b_free!18731 (not b_next!18731))))

(declare-fun tp!65314 () Bool)

(declare-fun b_and!30237 () Bool)

(assert (=> start!82626 (= tp!65314 b_and!30237)))

(declare-fun b!962504 () Bool)

(declare-fun res!644245 () Bool)

(declare-fun e!542814 () Bool)

(assert (=> b!962504 (=> (not res!644245) (not e!542814))))

(declare-datatypes ((array!59145 0))(
  ( (array!59146 (arr!28437 (Array (_ BitVec 32) (_ BitVec 64))) (size!28917 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59145)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59145 (_ BitVec 32)) Bool)

(assert (=> b!962504 (= res!644245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962505 () Bool)

(declare-fun res!644241 () Bool)

(assert (=> b!962505 (=> (not res!644241) (not e!542814))))

(declare-datatypes ((List!19856 0))(
  ( (Nil!19853) (Cons!19852 (h!21014 (_ BitVec 64)) (t!28227 List!19856)) )
))
(declare-fun arrayNoDuplicates!0 (array!59145 (_ BitVec 32) List!19856) Bool)

(assert (=> b!962505 (= res!644241 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19853))))

(declare-fun b!962506 () Bool)

(declare-fun e!542816 () Bool)

(declare-fun tp_is_empty!21533 () Bool)

(assert (=> b!962506 (= e!542816 tp_is_empty!21533)))

(declare-fun b!962507 () Bool)

(declare-fun res!644243 () Bool)

(assert (=> b!962507 (=> (not res!644243) (not e!542814))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!962507 (= res!644243 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28917 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28917 _keys!1686))))))

(declare-fun b!962508 () Bool)

(declare-fun e!542817 () Bool)

(declare-fun mapRes!34294 () Bool)

(assert (=> b!962508 (= e!542817 (and e!542816 mapRes!34294))))

(declare-fun condMapEmpty!34294 () Bool)

(declare-datatypes ((V!33693 0))(
  ( (V!33694 (val!10817 Int)) )
))
(declare-datatypes ((ValueCell!10285 0))(
  ( (ValueCellFull!10285 (v!13375 V!33693)) (EmptyCell!10285) )
))
(declare-datatypes ((array!59147 0))(
  ( (array!59148 (arr!28438 (Array (_ BitVec 32) ValueCell!10285)) (size!28918 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59147)

(declare-fun mapDefault!34294 () ValueCell!10285)

