; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82566 () Bool)

(assert start!82566)

(declare-fun b!961694 () Bool)

(declare-fun res!643703 () Bool)

(declare-fun e!542368 () Bool)

(assert (=> b!961694 (=> (not res!643703) (not e!542368))))

(declare-datatypes ((array!59033 0))(
  ( (array!59034 (arr!28381 (Array (_ BitVec 32) (_ BitVec 64))) (size!28861 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59033)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!961694 (= res!643703 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28861 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28861 _keys!1686))))))

(declare-fun b!961695 () Bool)

(declare-fun e!542364 () Bool)

(declare-fun tp_is_empty!21473 () Bool)

(assert (=> b!961695 (= e!542364 tp_is_empty!21473)))

(declare-fun b!961697 () Bool)

(declare-fun res!643706 () Bool)

(assert (=> b!961697 (=> (not res!643706) (not e!542368))))

(declare-datatypes ((List!19824 0))(
  ( (Nil!19821) (Cons!19820 (h!20982 (_ BitVec 64)) (t!28195 List!19824)) )
))
(declare-fun arrayNoDuplicates!0 (array!59033 (_ BitVec 32) List!19824) Bool)

(assert (=> b!961697 (= res!643706 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19821))))

(declare-fun b!961698 () Bool)

(declare-fun res!643701 () Bool)

(assert (=> b!961698 (=> (not res!643701) (not e!542368))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33613 0))(
  ( (V!33614 (val!10787 Int)) )
))
(declare-datatypes ((ValueCell!10255 0))(
  ( (ValueCellFull!10255 (v!13345 V!33613)) (EmptyCell!10255) )
))
(declare-datatypes ((array!59035 0))(
  ( (array!59036 (arr!28382 (Array (_ BitVec 32) ValueCell!10255)) (size!28862 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59035)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961698 (= res!643701 (and (= (size!28862 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28861 _keys!1686) (size!28862 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961699 () Bool)

(declare-fun e!542365 () Bool)

(declare-fun mapRes!34204 () Bool)

(assert (=> b!961699 (= e!542365 (and e!542364 mapRes!34204))))

(declare-fun condMapEmpty!34204 () Bool)

(declare-fun mapDefault!34204 () ValueCell!10255)

