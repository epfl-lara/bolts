; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41388 () Bool)

(assert start!41388)

(declare-fun b!462296 () Bool)

(declare-fun res!276546 () Bool)

(declare-fun e!269781 () Bool)

(assert (=> b!462296 (=> (not res!276546) (not e!269781))))

(declare-datatypes ((array!28761 0))(
  ( (array!28762 (arr!13811 (Array (_ BitVec 32) (_ BitVec 64))) (size!14163 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28761)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28761 (_ BitVec 32)) Bool)

(assert (=> b!462296 (= res!276546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462297 () Bool)

(assert (=> b!462297 (= e!269781 false)))

(declare-fun lt!209181 () Bool)

(declare-datatypes ((List!8349 0))(
  ( (Nil!8346) (Cons!8345 (h!9201 (_ BitVec 64)) (t!14301 List!8349)) )
))
(declare-fun arrayNoDuplicates!0 (array!28761 (_ BitVec 32) List!8349) Bool)

(assert (=> b!462297 (= lt!209181 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8346))))

(declare-fun b!462298 () Bool)

(declare-fun e!269785 () Bool)

(declare-fun e!269783 () Bool)

(declare-fun mapRes!20416 () Bool)

(assert (=> b!462298 (= e!269785 (and e!269783 mapRes!20416))))

(declare-fun condMapEmpty!20416 () Bool)

(declare-datatypes ((V!17767 0))(
  ( (V!17768 (val!6293 Int)) )
))
(declare-datatypes ((ValueCell!5905 0))(
  ( (ValueCellFull!5905 (v!8576 V!17767)) (EmptyCell!5905) )
))
(declare-datatypes ((array!28763 0))(
  ( (array!28764 (arr!13812 (Array (_ BitVec 32) ValueCell!5905)) (size!14164 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28763)

(declare-fun mapDefault!20416 () ValueCell!5905)

